#!/usr/bin/env bash
# build-all-macos.sh
# Build traaittXTCASH for all platforms from macOS.
#
# Targets built locally:
#   - macOS arm64   (native Apple Silicon)
#   - macOS x86_64  (cross via Apple toolchain)
#   - Windows x86_64 (cross via mingw-w64, optional)
#
# Usage:
#   ./scripts/build-all-macos.sh [--sign] [--notarize] [--windows]
#
# Requirements (install once):
#   brew install boost openssl cmake ninja
#   brew install mingw-w64        # for --windows
#
# Signing/notarizing requires a valid Developer ID cert in Keychain
# and a stored notarytool credential profile ("notarytool-password").

set -euo pipefail

# ── Options ───────────────────────────────────────────────────────────────────
SIGN=false
NOTARIZE=false
BUILD_WINDOWS=false

for arg in "$@"; do
  case $arg in
    --sign)     SIGN=true ;;
    --notarize) NOTARIZE=true; SIGN=true ;;
    --windows)  BUILD_WINDOWS=true ;;
  esac
done

# ── Config ────────────────────────────────────────────────────────────────────
SIGNING_IDENTITY="${SIGNING_IDENTITY:-Developer ID Application: Christian Benz (MC52ZBYMUT)}"
NOTARYTOOL_PROFILE="${NOTARYTOOL_PROFILE:-notarytool-password}"
OPENSSL_ROOT="$(brew --prefix openssl)"
JOBS=$(sysctl -n hw.logicalcpu)
BINARIES=(XTCASHnetwork cmdwallet cmdwalletbeta XTCASHservice XTCASHwalletapi MINER walletupgrader cryptotest)

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_ROOT"

# ── Helpers ───────────────────────────────────────────────────────────────────
build_macos() {
  local ARCH=$1
  local BUILD_DIR="build-macos-$ARCH"
  local DIST_DIR="dist-macos-$ARCH"
  local DMG="traaittXTCASH-macos-$ARCH.dmg"

  echo ""
  echo "════════════════════════════════════════"
  echo " Building macOS $ARCH"
  echo "════════════════════════════════════════"

  cmake -S . -B "$BUILD_DIR" \
    -G Ninja \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_OSX_ARCHITECTURES="$ARCH" \
    -DCMAKE_OSX_DEPLOYMENT_TARGET=12.0 \
    -DARCH=default \
    -DSTATIC=ON \
    -DOPENSSL_ROOT_DIR="$OPENSSL_ROOT"

  cmake --build "$BUILD_DIR" --parallel "$JOBS"

  rm -rf "$DIST_DIR" && mkdir -p "$DIST_DIR"
  for bin in "${BINARIES[@]}"; do
    [ -f "$BUILD_DIR/src/$bin" ] && cp "$BUILD_DIR/src/$bin" "$DIST_DIR/"
  done

  echo "  arch check:"
  for f in "$DIST_DIR"/*; do echo "    $(basename $f): $(lipo -archs $f)"; done

  if [[ "$SIGN" == "true" ]]; then
    echo "  signing..."
    for f in "$DIST_DIR"/*; do
      codesign --force --options runtime --timestamp \
        --sign "$SIGNING_IDENTITY" "$f"
    done
    echo "  verifying..."
    for f in "$DIST_DIR"/*; do
      codesign --verify --verbose "$f" 2>&1 | grep -v "^$" || true
    done
  fi

  echo "  creating DMG: $DMG"
  rm -f "$DMG"
  hdiutil create -volname "traaittXTCASH-$ARCH" \
    -srcfolder "$DIST_DIR" -ov -format UDZO "$DMG"

  if [[ "$NOTARIZE" == "true" ]]; then
    echo "  notarizing..."
    xcrun notarytool submit "$DMG" \
      --keychain-profile "$NOTARYTOOL_PROFILE" \
      --wait
    echo "  stapling..."
    xcrun stapler staple "$DMG"
  fi

  shasum -a 256 "$DMG" > "$DMG.sha256"
  echo "  done: $DMG ($(du -sh $DMG | cut -f1))"
}

build_windows() {
  local BUILD_DIR="build-windows-x86_64"
  local DIST_DIR="dist-windows-x86_64"
  local ARCHIVE="traaittXTCASH-windows-x86_64.zip"

  echo ""
  echo "════════════════════════════════════════"
  echo " Building Windows x86_64 (mingw-w64)"
  echo "════════════════════════════════════════"

  if ! command -v x86_64-w64-mingw32-gcc &>/dev/null; then
    echo "ERROR: mingw-w64 not found. Install with: brew install mingw-w64"
    exit 1
  fi

  MINGW_ROOT=$(brew --prefix mingw-w64)
  MINGW_BIN="$MINGW_ROOT/bin"

  cmake -S . -B "$BUILD_DIR" \
    -G Ninja \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_SYSTEM_NAME=Windows \
    -DCMAKE_C_COMPILER="$MINGW_BIN/x86_64-w64-mingw32-gcc" \
    -DCMAKE_CXX_COMPILER="$MINGW_BIN/x86_64-w64-mingw32-g++" \
    -DCMAKE_RC_COMPILER="$MINGW_BIN/x86_64-w64-mingw32-windres" \
    -DCMAKE_FIND_ROOT_PATH="$MINGW_ROOT/toolchain-x86_64" \
    -DARCH=default \
    -DSTATIC=ON \
    -DBOOST_ROOT="$MINGW_ROOT/toolchain-x86_64" \
    -DOPENSSL_ROOT_DIR="$MINGW_ROOT/toolchain-x86_64"

  cmake --build "$BUILD_DIR" --parallel "$JOBS"

  rm -rf "$DIST_DIR" && mkdir -p "$DIST_DIR"
  for bin in "${BINARIES[@]}"; do
    [ -f "$BUILD_DIR/src/$bin.exe" ] && cp "$BUILD_DIR/src/$bin.exe" "$DIST_DIR/"
  done

  echo "  packaging..."
  rm -f "$ARCHIVE"
  (cd "$DIST_DIR" && zip -r "../$ARCHIVE" .)
  shasum -a 256 "$ARCHIVE" > "$ARCHIVE.sha256"
  echo "  done: $ARCHIVE ($(du -sh $ARCHIVE | cut -f1))"
}

# ── Main ──────────────────────────────────────────────────────────────────────
echo "traaittXTCASH — Multi-Platform Build"
echo "Sign: $SIGN | Notarize: $NOTARIZE | Windows: $BUILD_WINDOWS"
echo "Jobs: $JOBS"

build_macos arm64
build_macos x86_64

if [[ "$BUILD_WINDOWS" == "true" ]]; then
  build_windows
fi

echo ""
echo "════════════════════════════════════════"
echo " All builds complete"
echo "════════════════════════════════════════"
ls -lh traaittXTCASH-*.dmg traaittXTCASH-*.zip traaittXTCASH-*.sha256 2>/dev/null || true
