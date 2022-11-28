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

import CSSH2

public struct SSH2 {
	public struct InitializationFlag: OptionSet {
		public let rawValue: Int32

		public init(rawValue: Int32) {
			self.rawValue = rawValue
		}

		public static let noCrypto = InitializationFlag(rawValue: 1)
	}

	public static func exit() {
		libssh2_exit()
	}

	public static func initialize(flags: InitializationFlag? = nil) throws {
		let errorCode = libssh2_init(flags?.rawValue ?? 0)
		guard errorCode == 0 else {
			throw SSH2Error.error(Int(errorCode))
		}
	}
}
