//
//  ViewControllerTests.swift
//  FizzBuzzTests
//
//  Created by Manpreet Singh on 17/04/19.
//  Copyright © 2019 Manpreet Singh. All rights reserved.
//

import XCTest

@testable import FizzBuzz

class ViewControllerTests: XCTestCase {

    var viewController: ViewController!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        
        UIApplication.shared.keyWindow?.rootViewController = viewController
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        super.tearDown()
    }
    
    func testMove1IncrementsScore() {
        
        viewController.play(move: .number)
        
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementsScore() {
        
        viewController.play(move: .number)
        
        viewController.play(move: .number)
        
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasAGame() {
        
        XCTAssertNotNil(viewController.game)
    }
    
    func testIfMoveIsFizz() {
        
        viewController.game?.score = 2
        
        viewController.play(move: .fizz)
        
        let newScore = viewController.game?.score
        
        XCTAssertEqual(newScore, 3)
    }
    
    func testIfMoveIsNotFizz() {
        
        viewController.game?.score = 1
        
        viewController.play(move: .fizz)
        
        let newScore = viewController.game?.score
        
        XCTAssertNotEqual(newScore, 3)
    }
    
    func testIfMoveIsBuzz() {
        
        viewController.game?.score = 4
        
        viewController.play(move: .buzz)
        
        let newScore = viewController.game?.score
        
        XCTAssertEqual(newScore, 5)
    }
    
    func testIfMoveIsNotBuzz() {
        
        viewController.game?.score = 1
        
        viewController.play(move: .buzz)
        
        let newScore = viewController.game?.score
        
        XCTAssertEqual(newScore, 1)
    }
    
    func testIfMoveIsFizzBuzz() {
        
        viewController.game?.score = 14
        
        viewController.play(move: .fizzBuzz)
        
        let newScore = viewController.game?.score
        
        XCTAssertEqual(newScore, 15)
    }
    
    func testIfMoveIsNotFizzBuzz() {
        
        viewController.game?.score = 1
        
        viewController.play(move: .fizzBuzz)
        
        let newScore = viewController.game?.score
        
        XCTAssertEqual(newScore, 1)
    }

}
