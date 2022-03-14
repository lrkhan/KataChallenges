import UIKit
import XCTest

///Given an integer number, return TRUE if it is prime.
///Return FALSE if it is not prime, including for integers below 2.
///
/// - Parameters:
///     Any integer
/// - Returns:
///     False if not prime, True if prime
func checkIfPrime(input: Int) -> Bool {
    //TODO: Code the function
    return true
}

///These are the tests that will run in this playground to make sure our function works correctly.
class TestCheckIfPrime: XCTestCase {
    func testOutOfBounds() {
        let input = 0
        let expectedResult = false
        let actualResult = checkIfPrime(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of 0, did not return false as was expected.")
    }
    
    func testTwo() {
        let input = 2
        let expectedResult = true
        let actualResult = checkIfPrime(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of 2, did not return true as was expected.")
    }
    
    func testEight() {
        let input = 8
        let expectedResult = false
        let actualResult = checkIfPrime(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of 8, did not return false as was expected.")
    }
    
    func testNine() {
        let input = 9
        let expectedResult = false
        let actualResult = checkIfPrime(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of 9, did not return false as was expected.")
    }
    
    func testEleven() {
        let input = 11
        let expectedResult = true
        let actualResult = checkIfPrime(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of 11, did not return true as was expected.")
    }
    
    func testLarge() {
        let input = 7369
        let expectedResult = true
        let actualResult = checkIfPrime(input: input)
        XCTAssert(expectedResult == actualResult, "\n With input of 7369, did not return true as was expected.")
    }
}

TestCheckIfPrime.defaultTestSuite.run()
