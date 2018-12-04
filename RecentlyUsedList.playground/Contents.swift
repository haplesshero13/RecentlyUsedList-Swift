import XCTest

class RecentlyUsedListTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    func testList() {
        XCTAssertTrue(false, "You should change this test!")
    }
}


let testObserver = TestObserver()
XCTestObservationCenter.shared.addTestObserver(testObserver)
RecentlyUsedListTests.defaultTestSuite.run()
