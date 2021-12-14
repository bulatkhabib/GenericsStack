//: A UIKit based Playground for presenting user interface

import Foundation

struct Stack<T>: Stackable {

    private var storage = [T]()
    
    var isEmpty: Bool {
        storage.isEmpty
    }
    
    var count: Int {
        storage.count
    }
    
    var peek: T? {
        storage.last
    }
    
    mutating func push(_ element: T) {
        storage.append(element)
    }
    
    mutating func pop() -> T? {
        isEmpty ? nil : storage.popLast()
    }
    
    typealias Element = T
    
    
}

protocol Stackable {
    associatedtype Element
    var isEmpty: Bool { get }
    var count: Int { get }
    var peek: Element? { get }
    mutating func push(_ element: Element)
    @discardableResult mutating func pop() -> Element?
}

var stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)
print(stack.isEmpty)
print(stack.peek)
print(stack.pop())
print(stack)
print(stack.pop())
print(stack.pop())
print(stack.isEmpty)
