import Foundation

public class RecentlyUsedList {
    private var elements = [String]()

    public init() {}

    public var size: Int {
        get { return elements.count }
    }

    public subscript(index: Int) -> String {
        get { return elements[index] }
    }

    public func insert(_ element: String) {
        if let currentIndex = elements.index(of: element) {
            elements.remove(at: currentIndex)
        }
        elements.insert(element, at: 0)
    }
}
