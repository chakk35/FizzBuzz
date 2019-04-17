//
//  ViewControllerUITests.swift
//  FizzBuzzUITests
//
//  Created by Manpreet Singh on 17/04/19.
//  Copyright © 2019 Manpreet Singh. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
        super.setUp()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        super.tearDown()
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testTapNumberButtonIncrementsScore() {
        
        let app = XCUIApplication()
        
        let numberB = app.buttons["numberB"]
        
        numberB.tap()
        
        let newScore = numberB.label
        
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonTwiceIncrementsTo2() {
        
        let app = XCUIApplication()
        
        let numberB = app.buttons["numberB"]
        
        numberB.tap()
        
        numberB.tap()
        
        let newScore = numberB.label
        
        XCTAssertEqual(newScore, "2")
    }
    
    func testTapFizzButtonIncrementsScore() {
        
        let app = XCUIApplication()
        
        let numberB = app.buttons["numberB"]
        
        let fizzB = app.buttons["fizzB"]
        
        numberB.tap()
        
        numberB.tap()
        
        fizzB.tap()
        
        let newScore = numberB.label
        
        XCTAssertEqual(newScore, "3")
    }
    
    func testTapBuzzButtonIncrementsScore() {
        
        let app = XCUIApplication()
        
        let numberB = app.buttons["numberB"]
        
        let fizzB = app.buttons["fizzB"]
        
        let buzzB = app.buttons["buzzB"]
        
        numberB.tap()
        
        numberB.tap()
        
        fizzB.tap()
        
        numberB.tap()
        
        numberB.tap()
        
        buzzB.tap()
        
        let newScore = numberB.label
        
        XCTAssertEqual(newScore, "5")
    }
    
    func testTapFizzBuzzButtonIncrementsScore() {
        
        let app = XCUIApplication()
        
        let numberB = app.buttons["numberB"]
        
        let fizzB = app.buttons["fizzB"]
        
        let buzzB = app.buttons["buzzB"]
        
        let fizzBuzzB = app.buttons["fizzBuzzB"]
        
        numberB.tap()
        
        numberB.tap()
        
        fizzB.tap()
        
        numberB.tap()
        
        numberB.tap()
        
        buzzB.tap()
        
        fizzB.tap()
        
        numberB.tap()
        
        numberB.tap()
        
        fizzB.tap()
        
        buzzB.tap()
        
        numberB.tap()
        
        fizzB.tap()
        
        numberB.tap()
        
        numberB.tap()
        
        fizzBuzzB.tap()
        
        let newScore = numberB.label
        
        XCTAssertEqual(newScore, "15")
    }

}
