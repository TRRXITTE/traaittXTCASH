#!/usr/bin/env bash
# build-sign-notarize-arm64.sh
# Local script: build traaittXTCASH for native arm64, sign, and notarize.
#
# Usage:
#   ./scripts/build-sign-notarize-arm64.sh [--notarize]
#
# Requirements:
#   brew install boost openssl cmake ninja
#   Valid "Developer ID Application" certificate in Keychain
#   App-specific password in Keychain or set APPLE_APP_PASSWORD env var

set -euo pipefail

# ── Configuration ────────────────────────────────────────────────────────────
BUILD_DIR="build-macos-arm64"
DIST_DIR="dist-arm64"
DMG_NAME="traaittXTCASH-macos-arm64.dmg"

SIGNING_IDENTITY="${SIGNING_IDENTITY:-Developer ID Application: Christian Benz (MC52ZBYMUT)}"
APPLE_ID="${APPLE_ID:-}"           # set via env or arg
APPLE_TEAM_ID="${APPLE_TEAM_ID:-MC52ZBYMUT}"
APPLE_APP_PASSWORD="${APPLE_APP_PASSWORD:-}"  # app-specific password

NOTARIZE=false
if [[ "${1:-}" == "--notarize" ]]; then
  NOTARIZE=true
fi

JOBS=$(sysctl -n hw.logicalcpu)
OPENSSL_ROOT="$(brew --prefix openssl)"

# ── Build ─────────────────────────────────────────────────────────────────────
echo "==> Configuring..."
cmake -S . -B "$BUILD_DIR" \
  -G Ninja \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_OSX_ARCHITECTURES=arm64 \
  -DCMAKE_OSX_DEPLOYMENT_TARGET=12.0 \
  -DARCH=default \
  -DSTATIC=ON \
  -DOPENSSL_ROOT_DIR="$OPENSSL_ROOT"

echo "==> Building (${JOBS} jobs)..."
cmake --build "$BUILD_DIR" --parallel "$JOBS"

# ── Collect binaries ──────────────────────────────────────────────────────────
echo "==> Collecting binaries..."
rm -rf "$DIST_DIR"
mkdir -p "$DIST_DIR"

BINARIES=(XTCASHnetwork cmdwallet cmdwalletbeta XTCASHservice XTCASHwalletapi MINER walletupgrader cryptotest)
for bin in "${BINARIES[@]}"; do
  if [[ -f "$BUILD_DIR/$bin" ]]; then
    cp "$BUILD_DIR/$bin" "$DIST_DIR/"
    echo "  copied $bin"
  else
    echo "  WARNING: $bin not found in $BUILD_DIR"
  fi
done

echo "==> Verifying arm64..."
for f in "$DIST_DIR"/*; do
  echo -n "  $f: "
  lipo -archs "$f"
done

# ── Sign ──────────────────────────────────────────────────────────────────────
echo "==> Signing with: $SIGNING_IDENTITY"
for bin in "$DIST_DIR"/*; do
  codesign --force --options runtime --timestamp \
    --sign "$SIGNING_IDENTITY" "$bin"
done

echo "==> Verifying signatures..."
for bin in "$DIST_DIR"/*; do
  codesign --verify --verbose "$bin"
done

# ── DMG ───────────────────────────────────────────────────────────────────────
echo "==> Creating DMG: $DMG_NAME"
rm -f "$DMG_NAME"
hdiutil create -volname "traaittXTCASH-arm64" \
  -srcfolder "$DIST_DIR" \
  -ov -format UDZO \
  "$DMG_NAME"

# ── Notarize (optional) ───────────────────────────────────────────────────────
if [[ "$NOTARIZE" == "true" ]]; then
  if [[ -z "$APPLE_ID" || -z "$APPLE_APP_PASSWORD" ]]; then
    echo "ERROR: Set APPLE_ID and APPLE_APP_PASSWORD to notarize."
    exit 1
  fi

  echo "==> Submitting for notarization..."
  xcrun notarytool submit "$DMG_NAME" \
    --apple-id "$APPLE_ID" \
    --team-id "$APPLE_TEAM_ID" \
    --password "$APPLE_APP_PASSWORD" \
    --wait

  echo "==> Stapling notarization ticket..."
  xcrun stapler staple "$DMG_NAME"
  echo "==> Done! $DMG_NAME is signed and notarized."
else
  echo "==> Done! Run with --notarize to submit for notarization."
  echo "    DMG: $DMG_NAME"
fi
