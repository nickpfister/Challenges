//
//  Challenge64.swift
//  Challenges
//
//  Created by Nick Pfister on 10/2/23.
//

func challenge64() {
    assert(nQueens(8) == 92)
    assert(nQueens(10) == 724)
    print("Challenge 64 solved!")
    
    func nQueens(_ n: Int) -> Int {
        let startBoard = Array<Int>(repeating: -1, count: n)
        return nQueens(board: startBoard, column: 0)
        
        func nQueens(board: [Int], column: Int) -> Int {
            let validPositions = validPositions(board: board, column: column)
            if column == board.count - 1 {
                return validPositions.count
            }
            
            var count = 0
            for position in validPositions {
                var boardCopy = board
                boardCopy[column] = position
                count += nQueens(board: boardCopy, column: column + 1)
            }
            
            return count
        }
        
        func validPositions(board: [Int], column: Int) -> Set<Int> {
            var positions = Set(0..<board.count)
            for previousColumn in 0..<column {
                let position = board[previousColumn]
                positions.remove(position)
                let columnDiff = column - previousColumn
                positions.remove(position + columnDiff)
                positions.remove(position - columnDiff)
            }
            
            return positions
        }
    }
}
