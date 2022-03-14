import UIKit
import XCTest

/// Given an integer input, return a square of '1's with width and height equal to the integer.
///
/// Example: given 4, print
///     1111
///     1111
///     1111
///     1111
///
/// - Parameters:
///     - input: integer equal to the width/height of the square
/// - Returns: String containing a square made out of '1's.
func getSquareOf1s(input: Int) -> String {
    if input < 0 { return "Fatal Error"}
    
    var output: String = ""
    
    for i in 0..<input {
        output += String(repeating: "1", count: input)
        
        if i < input-1 {
            output += "/n"
        }
    }
    
    return output
}



//Example printing test, if you'd like to do it this way:
let example = getSquareOf1s(input: 4)
print(example)

//Class of tests to check for accuracy of your function
class TestGetSquareOf1s: XCTestCase {
    
    func testNegativeOne() {
        let input = -1
        let expectedResult = "Fatal Error"
        let actualResult = getSquareOf1s(input: input)
        XCTAssert(expectedResult == actualResult, "\nFatal error: Range requires lowerBound <= upperBound")
        
    }
    
   func testZero() {
       let input = 0
       let expectedResult = ""
       let actualResult = getSquareOf1s(input: input)
       XCTAssert(expectedResult == actualResult, "\nExpected to see a blank string")
   }

    func testOne() {
        let input = 1
        let expectedResult = "1"
        let actualResult = getSquareOf1s(input: input)
        XCTAssert(expectedResult == actualResult,"\nExpected to see a blank string")
    }

    func testTwo() {
        let input = 2
        let expectedResult = "11/n11"
        let actualResult = getSquareOf1s(input: input)
        XCTAssert(expectedResult == actualResult, "\nExpected to see a blank string")
    }


    func testFour() {
        let input = 4
        let expectedResult = "1111/n1111/n1111/n1111"
        let actualResult = getSquareOf1s(input: input)
        XCTAssert(expectedResult == actualResult, "\nExpected to see a square of 1s")
    }

   

}

TestGetSquareOf1s.defaultTestSuite.run()

