//
//  Challenge50.swift
//  Challenges
//
//  Created by Nick Pfister on 9/30/23.
//

func challenge50() {
    assert(largestRange(ofNumbers: [0, 1, 1, -1, 2, 3, 1]) == 4...6)
    assert(largestRange(ofNumbers: [10, 20, 30, -10, -20, 10, 20]) == 0...2)
    assert(largestRange(ofNumbers: [1, -1, 2, -1]) == 2...2)
    assert(largestRange(ofNumbers: [2, 0, 2, 0, 2]) == 0...0)
    assert(largestRange(ofNumbers: [Int]()) == nil)
    
    print("Challenge 50 solved!")
    
    func largestRange(ofNumbers numbers: [Int]) -> ClosedRange<Int>? {
        var currentSum = 0
        var largestSum = 0
        var largestRange: ClosedRange<Int>? = nil
        var startOfRange: Int? = nil
        
        for (offset, element) in numbers.enumerated() {
            if element > 0 {
                startOfRange = startOfRange ?? offset
                
                currentSum += element
                
                if currentSum > largestSum {
                    largestRange = startOfRange!...offset
                    largestSum = currentSum
                }
            } else {
                startOfRange = nil
                currentSum = 0
            }
        }
        
        return largestRange
    }
}
