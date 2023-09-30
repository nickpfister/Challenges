//
//  Challenge52.swift
//  Challenges
//
//  Created by Nick Pfister on 9/30/23.
//

func challenge52() {
    assert(sumArray(ofNumbers: [1, 2, 3]) == 6)
    assert(sumArray(ofNumbers: [1.0, 2.0, 3.0]) == Double(6.0))
    assert(sumArray(ofNumbers: Array<Float>([1.0, 2.0, 3.0])) == Float(6.0))
    
    print("Challenge 52 solved!")
    
    func sumArray<T>(ofNumbers numbers: [T]) -> T where T: Numeric {
        return numbers.reduce(T.zero, +)
    }
}
