import XCTest

class RecentlyUsedListTests: XCTestCase {
    var list: RecentlyUsedList!

    override func setUp() {
        super.setUp()
        list = RecentlyUsedList()
    }

    func testListStartsEmpty() {
        XCTAssertEqual(list.size, 0)
    }

    func testInsert() {
        list.insert("first element")
        list.insert("second element")

        XCTAssertEqual(list.size, 2)
        XCTAssertEqual(list[0], "second element")
        XCTAssertEqual(list[1], "first element")
    }

    func testInsertExistingElement() {
        list.insert("first element")
        list.insert("second element")
        list.insert("third element")
        list.insert("first element")

        XCTAssertEqual(list[0], "first element")
        XCTAssertEqual(list[1], "third element")
        XCTAssertEqual(list[2], "second element")
        XCTAssertEqual(list.size, 3)
    }
}

TestRunner().runTests(testClass: RecentlyUsedListTests.self)
