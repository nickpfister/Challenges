//
//  Challenge41.swift
//  Challenges
//
//  Created by Nick Pfister on 9/28/23.
//

func challenge41() {
    assert([1, 2, 3].median() == 2)
    assert([1, 2, 9].median() == 2)
    assert([1, 3, 5, 7, 9].median() == 5)
    assert([1, 2, 3, 4].median() == 2.5)
    assert([Int]().median() == nil)
    
    print("Challenge 41 solved!")
}

extension Collection<Int> {
    func median() -> Double? {
        guard count > 0 else { return nil }
        
        let sorted = self.sorted()
        let upperIndex = count / 2
        
        // If the count is odd
        if count % 2 != 0 {
            return Double(sorted[upperIndex])
        }
        
        return Double((sorted[upperIndex] + sorted[upperIndex - 1])) / 2
    }
}
