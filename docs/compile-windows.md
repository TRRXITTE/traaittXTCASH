![image](https://github.com/TRRXITTE/traaittCASH/blob/master/docs/XTCASH.png)
#### traaittCASH [XTCASH] is a fast, and easy way to send money to friends and businesses

### Compiling traaittCASH [XTCASH]

##### Table of Contents

-   **Windows**
    -   [Windows Dependencies](#windows-dependencies)
    -   [Windows with VS2019](#windows-with-vs2019)

##### Build Optimization

The CMake build system will, by default, create optimized _native_ builds for your particular system type when you build the software. Using this method, the binaries created provide a better experience and all-together faster performance.

##### Making Portable Binaries

However, if you wish to create _portable_ binaries that can be shared between systems, specify `-DARCH=default` in your CMake arguments during the build process. Note that _portable_ binaries will have a noticable difference in performance than _native_ binaries. For this reason, it is always best to build for your particular system if possible.

## Windows

##### Windows Dependencies

You can build for 32-bit or 64-bit Windows. **If you're not sure, pick 64-bit.**

-   Download the [Build Tools for Visual Studio 2019](https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=BuildTools&rel=16) Installer
-   When it opens up select **C++ build tools**, it automatically selects the needed parts
-   Install Boost. Select the appropriate version for your system:
    -   [Boost 64-bit](https://bintray.com/boostorg/release/download_file?file_path=1.69.0%2Fbinaries%2Fboost_1_69_0-msvc-14.1-64.exe)
    -   [Boost 32-bit](https://bintray.com/boostorg/release/download_file?file_path=1.69.0%2Fbinaries%2Fboost_1_69_0-msvc-14.1-32.exe)
-   Install the latest full LTS version of OpenSSL (currently OpenSSL 1.1.0L). Select the appropriate version for your system:
    -   [OpenSSL 64-bit](https://slproweb.com/download/Win64OpenSSL-1_1_1d.exe)
    -   [OpenSSL 32-bit](https://slproweb.com/download/Win32OpenSSL-1_1_1d.exe)

##### Windows with VS2019

For 64-bit:

-   From the start menu, open **x64 Native Tools Command Prompt for VS 2019**.
-   `cd <your_traaittCASH_directory>`
-   `mkdir build`
-   `cd build`
-   `cmake -G "Visual Studio 16 2019" -A x64 .. -DBOOST_ROOT=C:/local/boost_1_69_0`
-   `MSBuild traaittCASH.sln /p:Configuration=Release /m` or `MSBuild src\cli.vcxproj /p:Configuration=Release /m`

For 32-bit:

-   From the start menu, open **x86 Native Tools Command Prompt for VS 2019**.
-   `cd <your_traaittPlatform_directory>`
-   `mkdir build`
-   `cd build`
-   `cmake -G "Visual Studio 16 2019" -A Win32 .. -DBOOST_ROOT=C:/local/boost_1_69_0`
-   `MSBuild traaittCASH.sln /p:Configuration=Release /p:Platform=Win32 /m`

The binaries will be in the `src/Release` folder when you are complete.

-   `cd src`
-   `cd Release`
-   `ETRXnetwork.exe --version`

[^ Return To Top](#compile-windows)