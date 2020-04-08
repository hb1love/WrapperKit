import XCTest
@testable import WrapperKit

class WrapperKitTests: XCTestCase {

  @CaseInsensitive("1") var testString1: String
  @CaseInsensitive("2") var testString2: String

  func testExample() {
    testString1 = "Test"
    testString2 = "test"

    XCTAssertTrue(testString1 == testString2)
  }
}
