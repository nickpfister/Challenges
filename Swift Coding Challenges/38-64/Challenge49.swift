//
//  Challenge49.swift
//  Challenges
//
//  Created by Nick Pfister on 9/29/23.
//

func challenge49() {
    assert(sumEvenRepeats(1, 2, 2, 3, 3, 4) == 5)
    assert(sumEvenRepeats(5, 5, 5, 12, 12) == 12)
    assert(sumEvenRepeats(1, 1, 2, 2, 3, 3, 4, 4) == 10)
    
    print("Challenge 49 solved!")
    
    func sumEvenRepeats(_ numbers: Int...) -> Int {
        let countedSet = NSCountedSet(array: numbers)
        var sum = 0
        
        for case let number as Int in countedSet {
            if countedSet.count(for: number) % 2 == 0 {
                sum += number
            }
        }
        
        return sum
    }
}
