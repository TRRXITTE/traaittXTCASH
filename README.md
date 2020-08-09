![image](https://github.com/TRRXITTE/traaittCASH/blob/master/docs/cash.png)
![Download Count](https://img.shields.io/github/downloads/traaittplatform/traaittcash/total.svg)
![Version](https://img.shields.io/github/v/release/traaittplatform/traaittcash)
#### Master Build Status
![Build Status](https://github.com/turtlecoin/turtlecoin/workflows/Build/badge.svg?branch=master) 

# traaittCASH [TCH]

traaittCASH is a fast, easy to use and private decentralized cryptocurrency combined with a powerful ecosystem and an eco-friendly mining algorithm.

Official Website:
https://traaittCASH.com

Explorer:
https://traaittCASHchain.com
https://explorer.traaittCASH.com

Mining Pool:
https://traaittCASHsupply.com
https://supply.traaittCASH.com

Blockchain Cache API:
https://traaittCASHAPI.com


# Installing

We offer binary images of the latest releases here: 
```
https://github.com/traaittCASH/traaittCASH/releases
```
```
https://github.com/traaittCASH/traaittCASHEnterprise/releases
```

# Graphical User Interface Wallet
GUI traaittCASH Cryptocurrency Wallet on Apple, Windows or Linux Machines.

traaittCASH Enterprise:

You can always find the newest Release here: https://github.com/traaittCASH/traaittCASHEnterprise/releases


# Command Line Interface Wallet
How to properly use traaittCASH Cryptocurrency on Apple, Windows or Linux Machines.

1st step: synchronize traaittCASHd
```
traaittCASH Application is used to synchronize the transaction history of your Wallet and
must be opened first.
```
2nd step: traaittCASH Wallet
```
Open traaittCASH Wallet to Receive, Send or simply view your current balance.
````
```
traaittCASH [TC] addresses always start with TR.
```

# How To Compile
## Build Optimization

The CMake build system will, by default, create optimized *native* builds for your particular system type when you build the software. Using this method, the binaries created provide a better experience and all together faster performance.

However, if you wish to create *portable* binaries that can be shared between systems, specify `-DARCH=default` in your CMake arguments during the build process. Note that *portable* binaries will have a noticable difference in performance than *native* binaries. For this reason, it is always best to build for your particular system if possible.

## Linux

### Prerequisites

You will need the following packages: [Boost](https://www.boost.org/), [OpenSSL](https://www.openssl.org/), cmake (3.8 or higher), make, and git.

You will also need either GCC/G++, or Clang.

If you are using GCC, you will need GCC-7.0 or higher.

If you are using Clang, you will need Clang 6.0 or higher. You will also need libstdc++\-6.0 or higher.

### Ubuntu, using GCC

- `sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y`
- `sudo apt-get update`
- `sudo apt-get install aptitude -y`
- `sudo aptitude install -y build-essential g++-8 gcc-8 git libboost-all-dev python-pip libssl-dev`
- `sudo pip install cmake`
- `export CC=gcc-8`
- `export CXX=g++-8`
- `git clone -b master --single-branch https://github.com/traaittCASH/traaittCASH`
- `cd traaittCASH`
- `mkdir build`
- `cd build`
- `cmake ..`
- `make`

The binaries will be in the `src` folder when you are complete.

- `cd src`
- `./traaittCASHd --version`

### Ubuntu, using Clang

- `sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y`
- `wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -`

You need to modify the below command for your version of ubuntu - see https://apt.llvm.org/

* Ubuntu 14.04 (Trusty)
- `sudo add-apt-repository "deb https://apt.llvm.org/trusty/ llvm-toolchain-trusty 6.0 main"`

* Ubuntu 16.04 (Xenial)
- `sudo add-apt-repository "deb https://apt.llvm.org/xenial/ llvm-toolchain-xenial 6.0 main"`

* Ubuntu 18.04 (Bionic)
- `sudo add-apt-repository "deb https://apt.llvm.org/bionic/ llvm-toolchain-bionic 6.0 main"`

- `sudo apt-get update`
- `sudo apt-get install aptitude -y`
- `sudo aptitude install -y -o Aptitude::ProblemResolver::SolutionCost='100*canceled-actions,200*removals' build-essential clang-6.0 libstdc++-7-dev git libboost-all-dev python-pip libssl-dev`
- `sudo pip install cmake`
- `export CC=clang-6.0`
- `export CXX=clang++-6.0`
- `git clone -b master --single-branch https://github.com/traaittCASH/traaittCASH`
- `cd traaittCASH`
- `mkdir build`
- `cd build`
- `cmake ..`
- `make`

The binaries will be in the `src` folder when you are complete.

- `cd src`
- `./traaittCASHd --version`

## Generic Linux

Ensure you have the dependencies listed above.

If you want to use clang, ensure you set the environment variables `CC` and `CXX`.
See the ubuntu instructions for an example.

- `git clone -b master --single-branch https://github.com/traaittCASH/traaittCASH`
- `cd traaittCASH`
- `mkdir build`
- `cd build`
- `cmake ..`
- `make`

The binaries will be in the `src` folder when you are complete.

- `cd src`
- `./traaittCASHd --version`

### OSX/Apple, using Clang

#### Prerequisites

- Install XCode and Developer Tools.

##### Building

- `which brew || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- `brew install --force cmake boost llvm@8 openssl`
- `brew link --force llvm@8`
- `ln -s /usr/local/opt/llvm@8 /usr/local/opt/llvm`
- `export CC=/usr/local/opt/llvm@8/bin/clang`
- `export CXX=/usr/local/opt/llvm@8/bin/clang++`
- `git clone -b master --single-branch https://github.com/traaittCASH/traaittCASH`
- `cd traaittCASH`
- `mkdir build`
- `cd build`
- `cmake ..`
- `make`

The binaries will be in the `src` folder when you are complete.

- `cd src`
- `./traaittCASHd --version`

## Windows

##### Prerequisites

You can build for 32-bit or 64-bit Windows. **If you're not sure, pick 64-bit.**

- Download the [Build Tools for Visual Studio 2019](https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=BuildTools&rel=16) Installer
- When it opens up select **C++ build tools**, it automatically selects the needed parts
- Install Boost (1.69 works the latest is 1.70 and doesn't work). Select the appropriate version for your system:
  - [Boost 64-bit](https://bintray.com/boostorg/release/download_file?file_path=1.69.0%2Fbinaries%2Fboost_1_69_0-msvc-14.1-64.exe)
  - [Boost 32-bit](https://bintray.com/boostorg/release/download_file?file_path=1.69.0%2Fbinaries%2Fboost_1_69_0-msvc-14.1-32.exe)
- Install the latest full LTS version of OpenSSL (currently OpenSSL 1.1.0L). Select the appropriate version for your system:
  - [OpenSSL 64-bit](https://slproweb.com/download/Win64OpenSSL-1_1_0L.exe)
  - [OpenSSL 32-bit](https://slproweb.com/download/Win32OpenSSL-1_1_0L.exe)

##### Building

For 64-bit:
- From the start menu, open 'x64 Native Tools Command Prompt for VS 2019'. 
- `cd <your_traaittCASH_directory>`
- `mkdir build`
- `cd build`
- `cmake -G "Visual Studio 16 2019" -A x64 .. -DBOOST_ROOT=C:/local/boost_1_69_0`
- `MSBuild traaittCASH.sln /p:Configuration=Release /m:4` or `MSBuild src\cli.vcxproj /p:Configuration=Release /m:4`

For 32-bit:
- From the start menu, open 'x86 Native Tools Command Prompt for VS 2019'.
- `cd <your_traaittplatform_directory>`
- `mkdir build`
- `cd build`
- `cmake -G "Visual Studio 16 2019" -A Win32 .. -DBOOST_ROOT=C:/local/boost_1_69_0`
- `MSBuild traaittCASH.sln /p:Configuration=Release /p:Platform=Win32 /m`

The binaries will be in the `src/Release` folder when you are complete.

- `cd src`
- `cd Release`
- `traaittCASHd.exe --version`


# Copyright Section
```
// Copyright (c) 2020-TODAY traaittCASH Team
// Copyright (c) 2018-2019, The TurtleCoin Developers
// Copyright (c) 2014-2018, The Monero Project
// Copyright (c) 2012-2017, The CryptoNote developers
