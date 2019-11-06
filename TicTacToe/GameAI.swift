//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {
    
    // Checking Vertical Column 0
    var numOfMarks = 0
    
    for y in 0..<3 {
        if board[(0, y)] == player {
            numOfMarks += 1
        }
    }
    
    if numOfMarks == 3 {
        return true
    }
    
    // Checking Vertical Column 1
    numOfMarks = 0
    
    for y in 0..<3 {
        if board[(1, y)] == player {
            numOfMarks += 1
        }
    }
    
    if numOfMarks == 3 {
        return true
    }
    
    // Checking Vertical Column 2
    numOfMarks = 0
    
    for y in 0..<3 {
        if board[(2, y)] == player {
            numOfMarks += 1
        }
    }
    
    if numOfMarks == 3 {
        return true
    }

    
    return false
}
