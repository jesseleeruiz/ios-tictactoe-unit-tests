//
//  GameAITests.swift
//  TicTacToeTests
//
//  Created by Jesse Ruiz on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameAITests: XCTestCase {
    
    func testWinCheckingVertical0() {
        
        var board = GameBoard()
        
        try! board.place(mark: .x, on: (0,0))
        try! board.place(mark: .o, on: (1,0))
        
        try! board.place(mark: .x, on: (0,1))
        try! board.place(mark: .o, on: (1,1))
        
        try! board.place(mark: .x, on: (0,2))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    func testWinCheckingVertical1() {
        
        var board = GameBoard()
        
        try! board.place(mark: .x, on: (1,0))
        try! board.place(mark: .o, on: (0,0))
        
        try! board.place(mark: .x, on: (1,1))
        try! board.place(mark: .o, on: (0,1))
        
        try! board.place(mark: .x, on: (1,2))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    func testWinCheckingVertical2() {
        
        var board = GameBoard()
        
        try! board.place(mark: .x, on: (2,0))
        try! board.place(mark: .o, on: (1,0))
        
        try! board.place(mark: .x, on: (2,1))
        try! board.place(mark: .o, on: (1,1))
        
        try! board.place(mark: .x, on: (2,2))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    func testWinCheckingHorizontal0() {
        
        var board = GameBoard()
        
        try! board.place(mark: .x, on: (0, 0))
        try! board.place(mark: .o, on: (0, 1))
        
        try! board.place(mark: .x, on: (1, 0))
        try! board.place(mark: .o, on: (1, 1))
        
        try! board.place(mark: .x, on: (2, 0))
    }
    
    func testWinCheckingHorizontal1() {
        
        var board = GameBoard()
        
        try! board.place(mark: .x, on: (0, 1))
        try! board.place(mark: .o, on: (0, 0))
        
        try! board.place(mark: .x, on: (1, 1))
        try! board.place(mark: .o, on: (1, 0))
        
        try! board.place(mark: .x, on: (1, 2))
    }
    
    func testWinCheckingHorizontal2() {
        
        var board = GameBoard()
        
        try! board.place(mark: .x, on: (0, 0))
        try! board.place(mark: .o, on: (0, 1))
        
        try! board.place(mark: .x, on: (1, 0))
        try! board.place(mark: .o, on: (1, 1))
        
        try! board.place(mark: .x, on: (2, 0))
    }

}
