//
//  GameBoardTests.swift
//  TicTacToeTests
//
//  Created by Jesse Ruiz on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameBoardTests: XCTestCase {

    func testCreatingEmptyBoard() {
        let board = GameBoard()
        
        
//        XCTAssertNil(board[(x: 0, y: 0)])
//        XCTAssertNil(board[(x: 1, y: 0)])
//        XCTAssertNil(board[(x: 2, y: 0)])
//        XCTAssertNil(board[(x: 0, y: 1)])
//        XCTAssertNil(board[(x: 1, y: 1)])
//        XCTAssertNil(board[(x: 2, y: 1)])
//        XCTAssertNil(board[(x: 0, y: 2)])
//        XCTAssertNil(board[(x: 1, y: 2)])
//        XCTAssertNil(board[(x: 2, y: 2)])
        
        /// ^^^ Not the best way to write out. Below is much better.
        
        for x in 0..<3 {
            for y in 0..<3 {
                XCTAssertNil(board[(x, y)], "The entry at (\(x), \(y)) was \(board[(x, y)]!) instead of nil")
            }
        }
        ///Point in Unit test is not to be clever. It is to check for assumptions.
        ///Sometimes you want to write things out in a dumb way to check thoroughly.
        ///If you are gonig to be clever make sure you use the message portion of the method.
    }
    
    func testPlacingMarks() {
        
        var board = GameBoard()
        
        XCTAssertNoThrow(try board.place(mark: .o, on: (0, 0)))
        XCTAssertEqual(board[(0, 0)], .o)
        
        XCTAssertNoThrow(try board.place(mark: .x, on: (2, 2)))
        XCTAssertEqual(board[(2, 2)], .x)
        
        for x in 0..<3 {
            for y in 0..<3 {
                if x == 0 && y == 0 { continue }
                if x == 2 && y == 2 { continue }
                
                XCTAssertNil(board[(x, y)], "The entry at (\(x), \(y)) was \(board[(x, y)]!) instead of nil")
            }
        }
        
        XCTAssertThrowsError(try board.place(mark: .o, on: (0, 0))) { (error) in
            XCTAssertEqual(error as? GameBoardError, GameBoardError.invalidSquare)
        }
    }
}
