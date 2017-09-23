//
//  HeapQueue.swift
//  HeapQueue
//
//  Created by Bernardo Breder on 06/01/17.
//
//

import XCTest
@testable import HeapQueue

class HeapQueueTests: XCTestCase {

    func testAsc() throws {
        let queue = HeapQueue<Int>({$0 < $1})
        queue.add(1)
        queue.add(9)
        queue.add(2)
        queue.add(8)
        queue.add(5)
        queue.add(4)
        queue.add(6)
        queue.add(3)
        queue.add(7)
        XCTAssertEqual(1, queue.remove())
        XCTAssertEqual(2, queue.remove())
        XCTAssertEqual(3, queue.remove())
        XCTAssertEqual(4, queue.remove())
        XCTAssertEqual(5, queue.remove())
        XCTAssertEqual(6, queue.remove())
        XCTAssertEqual(7, queue.remove())
        XCTAssertEqual(8, queue.remove())
        XCTAssertEqual(9, queue.remove())
    }

    func testDesc() throws {
        let queue = HeapQueue<Int>({$0 > $1})
        queue.add(1)
        queue.add(9)
        queue.add(2)
        queue.add(8)
        queue.add(5)
        queue.add(4)
        queue.add(6)
        queue.add(3)
        queue.add(7)
        XCTAssertEqual(9, queue.remove())
        XCTAssertEqual(8, queue.remove())
        XCTAssertEqual(7, queue.remove())
        XCTAssertEqual(6, queue.remove())
        XCTAssertEqual(5, queue.remove())
        XCTAssertEqual(4, queue.remove())
        XCTAssertEqual(3, queue.remove())
        XCTAssertEqual(2, queue.remove())
        XCTAssertEqual(1, queue.remove())
    }
    
    func testAscAdding() throws {
        let queue = HeapQueue<Int>({$0 < $1})
        queue.add(1)
        queue.add(9)
        queue.add(2)
        queue.add(8)
        queue.add(5)
        queue.add(4)
        queue.add(6)
        queue.add(3)
        queue.add(7)
        XCTAssertEqual(1, queue.remove())
        XCTAssertEqual(2, queue.remove())
        queue.add(1)
        queue.add(2)
        XCTAssertEqual(1, queue.remove())
        XCTAssertEqual(2, queue.remove())
        XCTAssertEqual(3, queue.remove())
        XCTAssertEqual(4, queue.remove())
        queue.add(1)
        queue.add(2)
        XCTAssertEqual(1, queue.remove())
        XCTAssertEqual(2, queue.remove())
        queue.add(3)
        queue.add(4)
        XCTAssertEqual(3, queue.remove())
        XCTAssertEqual(4, queue.remove())
        XCTAssertEqual(5, queue.remove())
        XCTAssertEqual(6, queue.remove())
        XCTAssertEqual(7, queue.remove())
        queue.add(4)
        queue.add(5)
        XCTAssertEqual(4, queue.remove())
        XCTAssertEqual(5, queue.remove())
        XCTAssertEqual(8, queue.remove())
        XCTAssertEqual(9, queue.remove())
        queue.add(4)
        XCTAssertEqual(4, queue.remove())
    }

}

