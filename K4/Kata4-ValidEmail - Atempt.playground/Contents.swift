import UIKit
import XCTest

///Given a string, return true if it is a valid email address, and false if not.
///
///Valid email addresses will be in this format:
///____@____.____
///
///That is to say:
///[User: Any letters or numbers. Periods/dashes/underscores may be in the middle, one at a time, but not first or last.]@[Domain: same as user box].[Domain ending: At least 2 characters. Letters only]
///
/// - Parameters:
///     String of potential email address
/// - Returns:
///     True if valid, false if invalid
func checkIfValidEmail(input: String) -> Bool {
    let pattern = #"(?!.*[._@-]{2,})^[^._-][a-zA-Z0-9._-]+[^._-]@[^._-][a-zA-Z0-9._-]+[^._@-]+\.[a-zA-z]{2,}+$"#
    let range = NSRange(location: 0, length: input.count)
    let regex = try! NSRegularExpression(pattern: pattern)

    if input.contains("@") && input.contains(".") {
        return regex.firstMatch(in: input, options: [], range: range) != nil
    }
    
    return false
}

///These are the tests that will run in this playground to make sure our function works correctly.
class TestCheckIfValidEmail: XCTestCase {
    func testEmptyString() {
        let input = ""
        let expectedResult = false
        let actualResult = checkIfValidEmail(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of empty string, did not return false as was expected.")
    }
    
    func testNotEmail() {
        let input = "timapple"
        let expectedResult = false
        let actualResult = checkIfValidEmail(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of timapple, did not return false as was expected.")
    }
    
    func testShortEmail() {
        let input = "tim@apple.com"
        let expectedResult = true
        let actualResult = checkIfValidEmail(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of tim@apple.com, did not return true as was expected.")
    }
    
    func testLongEmail() {
        let input = "my.3.favorite.potatoes@are.fried.extra.crispy"
        let expectedResult = true
        let actualResult = checkIfValidEmail(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of my.3.favorite.potatoes@are.fried.extra.crispy, did not return true as was expected.")
    }
    
    func testLongEmail2() {
        let input = "my.3-favorite_potatoes@are.fried-extra.crispy"
        let expectedResult = true
        let actualResult = checkIfValidEmail(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of my.3-favorite_potatoes@are.fried-extra.crispy, did not return true as was expected.")
    }
    
    func testEndPeriod() {
        let input = "tim.@apple.com"
        let expectedResult = false
        let actualResult = checkIfValidEmail(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of tim.@apple.com, did not return false as was expected.")
    }
    
    func testExtraPeriod() {
        let input = "tim..apple@apple.com"
        let expectedResult = false
        let actualResult = checkIfValidEmail(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of tim..apple@apple.com, did not return false as was expected.")
    }
    
    func testExtraneousCharacters() {
        let input = "cool$$kid&@me.com"
        let expectedResult = false
        let actualResult = checkIfValidEmail(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of cool$$kid&@me.com, did not return false as was expected.")
    }
    
    func testPeriodHyphen() {
        let input = "tim-.good@yay.whee"
        let expectedResult = false
        let actualResult = checkIfValidEmail(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of tim-.good@yay.whee, did not return false as was expected.")
    }
    
    func testWrongDomainEnding() {
        let input = "tim@apple.c"
        let expectedResult = false
        let actualResult = checkIfValidEmail(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of tim@apple.c, did not return false as was expected.")
    }
    
    func testWrongDomainEnding2() {
        let input = "tim@apple.com.123"
        let expectedResult = false
        let actualResult = checkIfValidEmail(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of tim@apple.com.123, did not return false as was expected.")
    }
    
    func testStartsWithPeriod() {
        let input = ".tim@apple.com"
        let expectedResult = false
        let actualResult = checkIfValidEmail(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of .tim@apple.com, did not return false as was expected.")
    }
    
    func testDoubleAtSign() {
        let input = "tim@@apple.com"
        let expectedResult = false
        let actualResult = checkIfValidEmail(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of tim@@apple.com, did not return false as was expected.")
    }
    
    func testDoubleAtSign2() {
        let input = "tim@apple@apple.com"
        let expectedResult = false
        let actualResult = checkIfValidEmail(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of tim@apple@apple.com, did not return false as was expected.")
    }
    
    func testDomainPeriod() {
        let input = "tim@.apple.com"
        let expectedResult = false
        let actualResult = checkIfValidEmail(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of tim@.apple.com, did not return false as was expected.")
    }
}

TestCheckIfValidEmail.defaultTestSuite.run()
