# Recently Used List

Develop a recently-used-list class to hold strings uniquely in Last-In-First-Out order.

* The most recently added item is first, the least recently added item is last.
* Items can be looked up by index, which counts from zero.
* Items in the list are unique, so duplicate insertions are moved rather than added.
* A recently-used-list is initially empty.

## Interface

```swift
public class RecentlyUsedList {
    public init()
    public var size: Int { get }
    public subscript(index: Int) -> String { get }
    public func insert(_ element: String)
}
```
