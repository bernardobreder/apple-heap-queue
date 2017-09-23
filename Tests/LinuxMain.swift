//
//  HeapQueueTests.swift
//  HeapQueue
//
//  Created by Bernardo Breder.
//
//

import XCTest
@testable import HeapQueueTests

extension HeapQueueTests {

	static var allTests : [(String, (HeapQueueTests) -> () throws -> Void)] {
		return [
			("testAscAdding", testAscAdding),
			("testAsc", testAsc),
			("testDesc", testDesc),
		]
	}

}

XCTMain([
	testCase(HeapQueueTests.allTests),
])

