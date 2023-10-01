//
//  Challenge59.swift
//  Challenges
//
//  Created by Nick Pfister on 10/1/23.
//

func challenge59() {
    var numbers = [12, 5, 4, 9, 3, 2, 1]
    numbers.quicksort()
    assert(numbers == [1, 2, 3, 4, 5, 9, 12])
    
    var letters = ["f", "a", "b"]
    letters.quicksort()
    assert(letters == ["a", "b", "f"])
    
    var empty = [String]()
    empty.quicksort()
    assert(empty == [])
    
    print("Challenge 59 solved!")
}

extension Array where Element: Comparable {
    mutating func quicksort() {
        quicksort(lowerBound: 0, upperBound: count - 1)
        
        func quicksort(lowerBound: Int, upperBound: Int){
            if lowerBound < upperBound {
                let pivot = partition(lowerBound: lowerBound, upperBound: upperBound)
                quicksort(lowerBound: lowerBound, upperBound: pivot - 1)
                quicksort(lowerBound: pivot + 1, upperBound: upperBound)
            }
        }
        
        func partition(lowerBound: Int, upperBound: Int) -> Int {
            let pivotKey = self[upperBound]
            var pivotIndex = lowerBound
            
            for i in lowerBound..<upperBound {
                if self[i] <= pivotKey {
                    swapAt(pivotIndex, i)
                    pivotIndex += 1
                }
            }
            
            swapAt(pivotIndex, upperBound)
            return pivotIndex
        }
    }
}
