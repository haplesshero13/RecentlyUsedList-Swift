import Foundation
import XCTest

public class PlaygroundTestObserver : NSObject, XCTestObservation {
    @objc public func testCase(_ testCase: XCTestCase, didFailWithDescription description: String, inFile filePath: String?, atLine lineNumber: UInt) {
        print("Test failed on line \(lineNumber): \(String(describing: testCase.name)), \(description)")
    }
}

public struct TestRunner {
    let observer = PlaygroundTestObserver()
    let center = XCTestObservationCenter.shared()

    public init() {
        center.addTestObserver(observer)
    }

    public func runTests(testClass:AnyClass) {
        print("Running test suite \(testClass)")
        
        let tests = testClass as! XCTestCase.Type
        let testSuite = tests.defaultTestSuite()
        testSuite.run()
        let run = testSuite.testRun as! XCTestSuiteRun
        
        print("Ran \(run.executionCount) tests in \(run.testDuration)s with \(run.totalFailureCount) failures")
    }
}
