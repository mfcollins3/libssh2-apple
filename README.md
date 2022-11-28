# libssh2 Swift Packafge

This repository implements a Swift package that builds, includes, and wraps the [libssh2](https://www.libssh2.org) library. I created this package because I have other frameworks that depend on libssh2 and I wanted to break out the libssh2 implementation in case anyone else had a need to use libssh2. Over time, I plan to build a Swift API for some of the libssh2 features to use them in applications.

The libssh2 library that this package wraps was built on top of OpenSSL. For the OpenSSL package, please see my [openssl-apple](https://github.com/mfcollins3/openssl-apple) repository.

This Swift package supports the following platforms:

* macOS (Apple Silicone and Intel)
* iOS (64-bit only)
* iOS Simulator (Apple Silicone and Intel)
* macOS Catalyst (Apple Silicone and Intel)

:warning: Please note that in order to use this Swift package, you must also agree to the license terms for libssh2 and OpenSSL. Please review the [OpenSSL license](https://github.com/openssl/openssl/blob/openssl-3.0.7/LICENSE.txt) and the [libssh2 license](https://github.com/libssh2/libssh2/blob/libssh2-1.10.0/COPYING) for more information.
