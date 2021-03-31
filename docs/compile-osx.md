![image](https://github.com/TRRXITTE/traaittCASH/blob/master/docs/XTCASH.png)

#### traaittCASH [XTCASH] is a fast, and easy way to send money to friends and businesses

### Compiling traaittCASH [XTCASH]

##### Table of Contents

-   **MacOS**
    -   [MacOS Dependencies](#macos-dependencies)
    -   [MacOS with CLANG](#macos-with-clang)

##### Build Optimization

The CMake build system will, by default, create optimized _native_ builds for your particular system type when you build the software. Using this method, the binaries created provide a better experience and all-together faster performance.

##### Making Portable Binaries

However, if you wish to create _portable_ binaries that can be shared between systems, specify `-DARCH=default` in your CMake arguments during the build process. Note that _portable_ binaries will have a noticable difference in performance than _native_ binaries. For this reason, it is always best to build for your particular system if possible.

## MacOS

##### MacOS Dependencies

-   [XCode](https://developer.apple.com/xcode/)
-   [CLANG](https://clang.llvm.org/)
-   [Brew](https://brew.sh/)
-   [Cmake (3.8, higher)](https://cmake.org/download/)
-   [GNU Make](https://ftp.gnu.org/gnu/make/)
-   [Git](https://git-scm.com/)

##### MacOS with CLANG

-   `which brew || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
-   `brew install --force cmake boost llvm@8 openssl`
-   `brew link --force llvm@8`
-   `ln -s /usr/local/opt/llvm@8 /usr/local/opt/llvm`
-   `export CC=/usr/local/opt/llvm@8/bin/clang`
-   `export CXX=/usr/local/opt/llvm@8/bin/clang++`
-   `git clone -b master --single-branch https://github.com/TRRXITTE/traaittCASH`
-   `cd traaittCASH`
-   `mkdir build`
-   `cd build`
-   `cmake ..`
-   `make`

The binaries will be in the `src` folder when you are complete.

-   `cd src`
-   `./XTCASHnetwork --version`

[^ Return To Top](#compile-osx)