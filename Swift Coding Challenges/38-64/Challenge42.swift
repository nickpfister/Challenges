//
//  Challenge42.swift
//  Challenges
//
//  Created by Nick Pfister on 9/28/23.
//

func challenge42() {
    assert([1, 2, 3].nicksFirstIndex(of: 1) == 0)
    assert([1, 2, 3].nicksFirstIndex(of: 3) == 2)
    assert([1, 2, 3].nicksFirstIndex(of: 5) == nil)
    
    print("Challenge 42 solved!")
}

extension Collection where Element: Equatable {
    func nicksFirstIndex(of elementToFind: Element) -> Int? {
        for (index, element) in self.enumerated() {
            if element == elementToFind {
                return index
            }
        }
        
        return nil
    }
}
