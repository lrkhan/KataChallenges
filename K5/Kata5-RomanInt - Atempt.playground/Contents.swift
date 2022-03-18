import UIKit
import XCTest

/// Given a roman numeral in a string, return its value as an integer. Roman numerals given will contain I = 1, V = 5, X = 10, L = 50, and C = 100.
///
/// - Parameters: A roman numeral in a string
///
/// - Returns: Value of roman numeral String as an Integer
func romanToInt(input: String) -> Int {
    if input == "" { return 0 }
    
    let valueLookUp: [Character: Int] = ["I": 1, "V": 5,"X": 10, "L":50, "C":100, "D":500, "M":1000]
    
    var previousNumber = 0
    var currenValue = 0
    var total = 0
    
    for i in input.reversed() {
        currenValue = valueLookUp[i] ?? -1
        
        if currenValue < 0 {
            return 0
        }
        
        if currenValue < previousNumber {
            total -= currenValue
        } else {
            total += currenValue
        }
        
        previousNumber = currenValue
    }
    
    //TODO: Code the function
    return total
}




//Class of tests to check for accuracy of your function
class TestRomanToInt: XCTestCase {
    
    func testRomanX() {
        let input = "X"
        let expectedResult = 10
        let actualResult = romanToInt(input: input)
        XCTAssert(expectedResult == actualResult, "\nExpected to see 10, but saw \(actualResult)")
        
    }
    
    func testRomanIV() {
        let input = "IV"
        let expectedResult = 4
        let actualResult = romanToInt(input: input)
        XCTAssert(expectedResult == actualResult, "\nExpected to see 4, but saw \(actualResult)")
        
    }
    func testRomanLXXX() {
        let input = "LXXX"
        let expectedResult = 80
        let actualResult = romanToInt(input: input)
        XCTAssert(expectedResult == actualResult, "\nExpected to see 80, but saw \(actualResult)")
        
    }
    func testRomanCCCXLIV() {
        let input = "CCCXLIV"
        let expectedResult = 344
        let actualResult = romanToInt(input: input)
        XCTAssert(expectedResult == actualResult, "\nExpected to see 344, but saw \(actualResult)")
        
    }


    func testRomanCCCXWLB() {
        let input = "CCCXWLB"
        let expectedResult = 0
        let actualResult = romanToInt(input: input)
        XCTAssert(expectedResult == actualResult, "\nExpected to see 0, Invalid Roman Numeral.")
        
    }
   

}

TestRomanToInt.defaultTestSuite.run()

