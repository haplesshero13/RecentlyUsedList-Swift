import XCTest

class RecentlyUsedListTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    func testList() {
    }
}

let observer = PlaygroundTestObserver()
let center = XCTestObservationCenter.shared()
center.addTestObserver(observer)
TestRunner().runTests(testClass: RecentlyUsedListTests.self)
