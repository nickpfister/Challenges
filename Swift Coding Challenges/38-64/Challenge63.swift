//
//  Challenge63.swift
//  Challenges
//
//  Created by Nick Pfister on 10/2/23.
//

import GameKit

func challenge63() {
    let random = GKMersenneTwisterRandomSource(seed: 1)
    var grid = (1...10).map { _ in (1...10).map { _ in Int(random.nextInt(upperBound: 2)) } }
    grid = floodFill(5, in: grid, at: (2, 0))
    
    let expectedResult = [
        [5, 5, 5, 5, 5, 1, 5, 5, 1, 1],
        [5, 1, 1, 5, 5, 5, 5, 1, 0, 0],
        [5, 1, 5, 5, 5, 5, 5, 5, 1, 1],
        [1, 0, 1, 5, 5, 1, 1, 5, 5, 5],
        [1, 0, 1, 5, 1, 1, 1, 1, 1, 5],
        [1, 0, 1, 1, 5, 5, 5, 5, 5, 5],
        [0, 0, 0, 0, 1, 1, 1, 5, 1, 1],
        [1, 1, 1, 0, 0, 1, 1, 1, 1, 1],
        [1, 1, 0, 1, 1, 1, 1, 0, 0, 0],
        [0, 1, 1, 0, 0, 1, 0, 1, 1, 1]
    ]
    
    assert(grid == expectedResult)
    
    print("Challenge 63 solved!")
    
    func floodFill(_ val: Int, in grid: [[Int]], at point: (x: Int, y: Int)) -> [[Int]] {
        let width = grid[0].count
        let height = grid.count
        let replaceVal = grid[point.y][point.x]
        var gridCopy = grid
        
        fillConnections(of: point)
        
        func fillConnections(of originPoint: (x: Int, y: Int)) {
            let (x, y) = originPoint
            guard x >= 0 && x < width &&
                  y >= 0 && originPoint.y < height
            else {
                return
            }
            
            guard gridCopy[originPoint.y][originPoint.x] == replaceVal else {
                return
            }
            
            gridCopy[originPoint.y][originPoint.x] = val
            fillConnections(of: (x, y + 1))
            fillConnections(of: (x, y - 1))
            fillConnections(of: (x + 1, y))
            fillConnections(of: (x - 1, y))
        }
        
        return gridCopy
    }
}
