//
//  GameTests.swift
//  FizzBuzzTests
//
//  Created by Manpreet Singh on 17/04/19.
//  Copyright © 2019 Manpreet Singh. All rights reserved.
//

import XCTest

@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        super.setUp()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        
        XCTAssertEqual(game.score, 0)
    }
    
    func testOnPlayScoreIncremented() {
        
        _ = game.play(move: .number)
        
        XCTAssertEqual(game.score, 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        
        game.score = 1
        
        _ = game.play(move: .number)
        
        XCTAssertEqual(game.score, 2)
    }
    
    func testIfMoveIsFizz() {
        
        game.score = 2
        
        let response = game.play(move: .fizz)
        
        let result = response.right
        
        XCTAssertTrue(result)
    }
    
    func testIfMoveIsNotFizz() {
        
        game.score = 1
        
        let response = game.play(move: .fizz)
        
        let result = response.right
        
        XCTAssertFalse(result)
    }
    
    func testIfMoveIsBuzz() {
        
        game.score = 4
        
        let response = game.play(move: .buzz)
        
        let result = response.right
        
        XCTAssertTrue(result)
    }
    
    func testIfMoveIsNotBuzz() {
        
        game.score = 2
        
        let response = game.play(move: .buzz)
        
        let result = response.right
        
        XCTAssertFalse(result)
    }
    
    func testIfMoveIsFizzBuzz() {
        
        game.score = 14
        
        let response = game.play(move: .fizzBuzz)
        
        let result = response.right
        
        XCTAssertTrue(result)
    }
    
    func testIfMoveIsNotFizzBuzz() {
        
        game.score = 4
        
        let response = game.play(move: .fizzBuzz)
        
        let result = response.right
        
        XCTAssertFalse(result)
    }
    
    func testIfMoveIsNumber() {
        
        game.score = 1
        
        let response = game.play(move: .number)
        
        let result = response.right
        
        XCTAssertTrue(result)
    }
    
    func testIfMoveIsNotNumber() {
        
        game.score = 2
        
        let response = game.play(move: .number)
        
        let result = response.right
        
        XCTAssertFalse(result)
    }
    
    func testIfScoreNotIncrementedOnWrongMove() {
        
        game.score = 1
        
        _ = game.play(move: .fizz)
        
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        
        let response = game.play(move: .number)
        
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        
        let response = game.play(move: .number)
        
        XCTAssertNotNil(response.score)
    }

}
