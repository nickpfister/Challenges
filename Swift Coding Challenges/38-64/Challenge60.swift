//
//  Challenge60.swift
//  Challenges
//
//  Created by Nick Pfister on 10/2/23.
//

func challenge60() {
    let board1 = [["X", "", "O"], ["", "X", "O"], ["", "", "X"]]
    let board2 = [["X", "", "O"], ["X", "", "O"], ["X", "", ""]]
    let board3 = [["", "X", ""], ["O", "X", ""], ["O", "X", ""]]
    let board4 = [["", "X", ""], ["O", "X", ""], ["O", "", "X"]]
    let board5 = [["", "", ""], ["", "", ""], ["", "", ""]]
    
    assert(ticTacToeWinner(board1))
    assert(ticTacToeWinner(board2))
    assert(ticTacToeWinner(board3))
    assert(!ticTacToeWinner(board4))
    assert(!ticTacToeWinner(board5))
    
    print("Challenge 60 solved!")
    
    func ticTacToeWinner(_ board: [[String]]) -> Bool {
        guard board.count == 3 else {
            return false
        }
        
        for row in board {
            guard row.count == 3 else {
                return false
            }
        }
        
        // check rows
        if checkForWin(atPosition: (0,0), slope: (0, 1)) { return true }
        if checkForWin(atPosition: (1,0), slope: (0, 1)) { return true }
        if checkForWin(atPosition: (2,0), slope: (0, 1)) { return true }
        
        // check columns
        if checkForWin(atPosition: (0,0), slope: (1, 0)) { return true }
        if checkForWin(atPosition: (0,1), slope: (1, 0)) { return true }
        if checkForWin(atPosition: (0,2), slope: (1, 0)) { return true }
        
        // check diagonals
        if checkForWin(atPosition: (0,0), slope: (1, 1)) { return true }
        if checkForWin(atPosition: (2,0), slope: (-1, 1)) { return true }
        
        return false
        
        func checkForWin(atPosition startPosition: (Int, Int), slope: (Int, Int)) -> Bool {
            let winningCharacter = board[startPosition.0][startPosition.1]
            guard winningCharacter == "X" || winningCharacter == "O" else {
                return false
            }
            
            let (row0, column0) = startPosition
            guard row0 == 0 && (column0 >= 0 && column0 < 3) || column0 == 0 && (row0 >= 0 && row0 < 3) else {
                return false
            }
            
            for step in 0..<3 {
                let row = slope.0 * step + row0
                let column = slope.1 * step + column0
                
                if board[row][column] != winningCharacter {
                    return false
                }
            }
            
            return true
        }
    }
}
