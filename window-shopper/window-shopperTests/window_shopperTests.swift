//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Aaron Johal on 09/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetHours() {
        XCTAssert(Wage.getHours(forWage: 25, andPrice: 100) == 4)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
