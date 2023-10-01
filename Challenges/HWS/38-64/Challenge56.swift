//
//  Challenge56.swift
//  Challenges
//
//  Created by Nick Pfister on 10/1/23.
//

func challenge56() {
    var numbers = [12, 5, 4, 9, 3, 2, 1]
    numbers.insertionSort()
    assert(numbers == [1, 2, 3, 4, 5, 9, 12])
    
    var letters = ["f", "a", "b"]
    letters.insertionSort()
    assert(letters == ["a", "b", "f"])
    
    var empty = [String]()
    empty.insertionSort()
    assert(empty == [])
    
    print("Challenge 56 solved!")
}

extension Array where Element: Comparable {
    mutating func insertionSort() {
        guard count > 0 else { return }
        
        for i in 1..<count {
            let key = self[i]
            var j = i - 1
            while j >= 0 && self[j] > key {
                self[j + 1] = self[j]
                j -= 1
            }
            self[j + 1] = key
        }
    }
}
