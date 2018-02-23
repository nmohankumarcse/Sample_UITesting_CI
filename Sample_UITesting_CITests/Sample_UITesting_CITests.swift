//
//  Sample_UITesting_CITests.swift
//  Sample_UITesting_CITests
//
//  Created by Mohankumar on 23/02/18.
//  Copyright © 2018 Learning. All rights reserved.
//

import XCTest
@testable import Sample_UITesting_CI

class Sample_UITesting_CITests: XCTestCase {
    var gameUnderTest: BullsEyeGame!
    
    override func setUp() {
        super.setUp()
        gameUnderTest = BullsEyeGame()
        gameUnderTest.startNewGame()
    }
    
    override func tearDown() {
        gameUnderTest = nil
        super.tearDown()
    }
    
    // XCTAssert to test model
    func testScoreIsComputedWhenGuessGTTarget() {
        // 1. given
        let guess = gameUnderTest.targetValue + 5
        
        // 2. when
        _ = gameUnderTest.check(guess: guess)
        
        // 3. then
        XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computed from guess is wrong")
    }
    
    func testScoreIsComputedWhenGuessLTTarget() {
        // 1. given
        let guess = gameUnderTest.targetValue - 5
        
        // 2. when
        _ = gameUnderTest.check(guess: guess)
        
        // 3. then
        XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computed from guess is wrong")
    }
    
}
