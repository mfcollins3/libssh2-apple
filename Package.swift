// swift-tools-version: 5.7

// Copyright 2022 Michael F. Collins, III
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the "Software"),
// to deal in the Software without restrictions, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense,
// and/or sell copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.

import PackageDescription

let package = Package(
    name: "SSH2",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "SSH2",
            targets: ["SSH2"]
        ),
    ],
    dependencies: [
		.package(
			url: "https://github.com/mfcollins3/openssl-apple.git",
			.upToNextMajor(from: "0.1.0")
		)
    ],
    targets: [
        .target(
            name: "SSH2",
            dependencies: [
                "CSSH2",
                "libssh2",
				.product(name: "OpenSSL", package: "openssl-apple")
            ]
        ),
        .target(
            name: "CSSH2",
            publicHeadersPath: "./"
        ),
        .binaryTarget(
            name: "libssh2",
            url: "https://github.com/mfcollins3/libssh2-apple/releases/download/0.1.0/libssh2.zip",
            checksum: "18ad96b7d1ed7d2f095cd1221ebeb4e3fb1f9ac86ba90a154ca5fa84da0c2d8d"
        )
    ]
)
