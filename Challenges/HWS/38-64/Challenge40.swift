//
//  Challenge40.swift
//  Challenges
//
//  Created by Nick Pfister on 9/27/23.
//

func challenge40() {
    var testArray = Array(1...100)
    testArray.remove(at: 25)
    testArray.remove(at: 20)
    testArray.remove(at: 6)
    
    assert(missingInts(ofArray: testArray) == [7, 21, 26])
    print("Challenge 40 solved!")
    
    func missingInts(ofArray array: [Int]) -> [Int] {
        var missing = [Int]()
        let set = Set(array)
        
        for i in 1...100 {
            if !set.contains(i) {
                missing.append(i)
            }
        }
        
        return missing
    }
}
