//
//  HeapQueue.swift
//  HeapQueue
//
//  Created by Bernardo Breder on 06/01/17.
//
//

import Foundation

public class HeapQueue<E> {
    
    private var array: [E?] = []
    
    private let compare: (E, E) -> Bool
    
    public init(_ compare: @escaping (E, E) -> Bool) {
        self.compare = compare
        self.array.append(nil)
    }
    
    public var count: Int {
        return array.count - 1
    }
    
    @discardableResult
    public func add(_ item: E) -> Self {
        if array.count == 0 {
            array.append(item)
        }
        array.append(item)
        var index = array.count - 1
        while hasParent(index) && compare(element(index), parent(index)) {
            swap(index, parentIndex(index))
            index = parentIndex(index)
        }
        return self
    }
    
    @discardableResult
    public func remove() -> E? {
        guard array.count > 1 else { return nil }
        let result = peek
        array[1] = array.last!
        array.removeLast()
        var index = 1
        while hasLeftChild(index) {
            var smallerChild = leftIndex(index)
            if hasRightChild(index) && compare(element(rightIndex(index)), element(leftIndex(index))) {
                smallerChild = rightIndex(index);
            }
            guard compare(element(smallerChild), element(index)) else { break }
            swap(index, smallerChild)
            index = smallerChild
        }
        return result;
    }
    
    public var peek: E? {
        guard array.count > 1 else { return nil }
        return element(1)
    }
    
    internal func hasParent(_ i: Int) -> Bool {
        return i > 1
    }
    
    internal func leftIndex(_ i: Int) -> Int {
        return i * 2
    }
    
    internal func rightIndex(_ i: Int) -> Int {
        return i * 2 + 1
    }
    
    internal func hasLeftChild(_ i: Int) -> Bool {
        return leftIndex(i) <= array.count - 1
    }
    
    internal func hasRightChild(_ i: Int) -> Bool {
        return rightIndex(i) <= array.count - 1
    }
    
    internal func parent(_ i: Int) -> E {
        return element(parentIndex(i))
    }
    
    internal func element(_ i: Int) -> E {
        return array[i]!
    }
    
    internal func parentIndex(_ i: Int) -> Int {
        return i / 2
    }
    
    internal func swap(_ left: Int, _ right: Int) {
        let tmp = element(left)
        array[left] = element(right)
        array[right] = tmp
    }
    
}

