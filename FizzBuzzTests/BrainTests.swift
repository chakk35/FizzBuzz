//
//  BrainTests.swift
//  FizzBuzzTests
//
//  Created by Manpreet Singh on 17/04/19.
//  Copyright © 2019 Manpreet Singh. All rights reserved.
//

import XCTest

@testable import FizzBuzz

class BrainTests: XCTestCase {
    
    let brain = Brain()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        super.setUp()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testIsDivisibleByThree() {
        
        let result = brain.isDivisibleByThree(number: 3)
        
        XCTAssertTrue(result)
        
        //OR
        
        //XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisbleByThree() {
        
        let result = brain.isDivisibleByThree(number: 1)
        
        XCTAssertFalse(result)
        
        //OR
        
        //XCTAssertNotEqual(result, true)
    }
    
    func testIsDivisibleByFive() {
        
        let result = brain.isDivisibleByFive(number: 5)
        
        XCTAssertTrue(result)
    }
    
    func testIsNotDivisibleByFive() {
        
        let result = brain.isDivisibleByFive(number: 2)
        
        XCTAssertFalse(result)
    }
    
    func testIsDivisibleByFifteen() {
        
        let result = brain.isDivisibleByFifteen(number: 15)
        
        XCTAssertTrue(result)
    }
    
    func testIsNotDivisibleByFifteen() {
        
        let result = brain.isDivisibleByFifteen(number: 7)
        
        XCTAssertFalse(result)
    }
    
    func testSayFizz() {
        
        let result = brain.check(number: 3)
        
        XCTAssertEqual(result, Move.fizz)
    }
    
    func testSayBuzz() {
        
        let result = brain.check(number: 5)
        
        XCTAssertEqual(result, Move.buzz)
    }
    
    func testSayFizzBuzz() {
        
        let result = brain.check(number: 15)
        
        XCTAssertEqual(result, Move.fizzBuzz)
    }
    
    func testSayNumber() {
        
        let result = brain.check(number: 1)
        
        XCTAssertEqual(result, Move.number)
    }

}
