import UIKit
import XCTest

/// finds the minimum and maximum values of an array. If the array is empty, return an empty array. Try to do this without using builtin functions.
///
/// - Parameters:
///     - inputArray: an array of integers
/// - Returns: Minimum value as 0th element and maximum value as 1st element. An empty input array returns empty output array.
func findMinMax(inputArray: [Int]) -> [Int] {
    return []
}

class TestFindMinMax: XCTestCase {
    
    func testBasic() {
        let inputArray = [1, 2, 3, 4, 5]
        let expectedResult = [1, 5]
        let actualResult = findMinMax(inputArray: inputArray)
        XCTAssert(expectedResult == actualResult)
    }
    
    func testRepeatedMin() {
        let inputArray = [1, 1, 1, 3]
        let expectedResult = [1, 3]
        let actualResult = findMinMax(inputArray: inputArray)
        XCTAssert(expectedResult == actualResult)
    }
    
    func testRepeatedMinReversed() {
        let inputArray = [3, 1, 1, 1]
        let expectedResult = [1, 3]
        let actualResult = findMinMax(inputArray: inputArray)
        XCTAssert(expectedResult == actualResult)
    }
    
    func testRepeatedMax() {
        let inputArray = [1, 5, 5, 5]
        let expectedResult = [1, 5]
        let actualResult = findMinMax(inputArray: inputArray)
        XCTAssert(expectedResult == actualResult)
    }
    
    func testHomogenousArray() {
        let inputArray = [5, 5, 5, 5]
        let expectedResult = [5, 5]
        let actualResult = findMinMax(inputArray: inputArray)
        XCTAssert(expectedResult == actualResult)
    }
    
    func testNegativeValues() {
        let inputArray = [-5, -1, 0]
        let expectedResult = [-5, 0]
        let actualResult = findMinMax(inputArray: inputArray)
        XCTAssert(expectedResult == actualResult)
    }
    
    func testEmptyArray() {
        let inputArray = [Int]()
        let expectedResult = [Int]()
        let actualResult = findMinMax(inputArray: inputArray)
        XCTAssert(expectedResult == actualResult)
    }

}

TestFindMinMax.defaultTestSuite.run()
