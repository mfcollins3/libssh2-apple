# libssh2 Swift Packafge

## Overview

This repository implements a Swift package that builds, includes, and wraps the [libssh2](https://www.libssh2.org) library. I created this package because I have other frameworks that depend on libssh2 and I wanted to break out the libssh2 implementation in case anyone else had a need to use libssh2. Over time, I plan to build a Swift API for some of the libssh2 features to use them in applications.

The libssh2 library that this package wraps was built on top of OpenSSL. For the OpenSSL package, please see my [openssl-apple](https://github.com/mfcollins3/openssl-apple) repository.

This Swift package supports the following platforms:

* macOS (Apple Silicone and Intel)
* iOS (64-bit only)
* iOS Simulator (Apple Silicone and Intel)
* macOS Catalyst (Apple Silicone and Intel)

:warning: Please note that in order to use this Swift package, you must also agree to the license terms for libssh2 and OpenSSL. Please review the [OpenSSL license](https://github.com/openssl/openssl/blob/openssl-3.0.7/LICENSE.txt) and the [libssh2 license](https://github.com/libssh2/libssh2/blob/libssh2-1.10.0/COPYING) for more information.

## Building libssh2

:warning: Building libssh2 from scratch requires you to have installed and built OpenSSL from my [openssl-apple](https://github.com/mfcollins3/openssl-apple) repository. `openssl-apple` and `libssh2-apple` must be siblings in the same parent directory as the build program in `libssh2-apple` uses a relative file path to find the `openssl-apple` repository.

If you need to build the libssh2 libraries for use with other libraries that might depend on libssh2, I have provided the [build.sh](build.sh) script to automate the process. This program will build libssh2 for all supported platforms and will produce an XCFramework containing the libraries and header files for all supported platforms.

This repository includes the source code for libssh2 as a Git submodule. To begin, you need to clone the repository and load the submodules:

```sh
git clone https://github.com/mfcollins3/libssh2-apple.git
cd libssh2-apple
git submodule init
git submodule update
```

After cloning the repository and loading the libssh2 source code, you can run the `build.sh` program without any arguments to build the libssh2 library and produce the XCFramework.
