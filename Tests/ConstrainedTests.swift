//  MIT License
//
//  Copyright (c) 2020 Esther. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import XCTest
@testable import WrapperKit

class ConstrainedTests: XCTestCase {
  private let lowerbound = 1
  private let upperbound = 12
  @Constrained(1, range: 1...12) var month: Int

  func testConstrained() {
    // Given
    let newMonth = 12

    // When
    month = newMonth

    // Then
    XCTAssertEqual(month, newMonth)
  }

  func testLowerboundConstrained() {
    // Given
    let newMonth = 0

    // When
    month = newMonth

    // Then
    XCTAssertEqual(month, lowerbound)
  }

  func testUpperboundConstrained() {
    // Given
    let newMonth = 13

    // When
    month = newMonth

    // Then
    XCTAssertEqual(month, upperbound)
  }
}
