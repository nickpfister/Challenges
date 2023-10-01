//
//  Challenge55.swift
//  Challenges
//
//  Created by Nick Pfister on 10/1/23.
//

func challenge55() {
    var numbers = [12, 5, 4, 9, 3, 2, 1]
    numbers.bubbleSort()
    assert(numbers == [1, 2, 3, 4, 5, 9, 12])
    
    var letters = ["f", "a", "b"]
    letters.bubbleSort()
    assert(letters == ["a", "b", "f"])
    
    var empty = [String]()
    empty.bubbleSort()
    assert(empty == [])
    
    print("Challenge 55 solved!")
}

extension Array where Element: Comparable {
    mutating func bubbleSort() {
        for i in (0..<count).reversed() {
            for j in 0..<i {
                if self[j] > self[j + 1] {
                    self.swapAt(j, j + 1)
                }
            }
        }
    }
}
