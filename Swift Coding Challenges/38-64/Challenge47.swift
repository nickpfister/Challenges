//
//  Challenge47.swift
//  Challenges
//
//  Created by Nick Pfister on 9/29/23.
//

func challenge47() {
    assert([1, 2, 3].nickMin() == 1)
    assert(["q", "f", "k"].nickMin() == "f")
    assert([4096, 256, 16].nickMin() == 16)
    assert([String]().nickMin() == nil)
    
    print("Challenge 47 solved!")
}

extension Collection where Element: Comparable {
    func nickMin() -> Element? {
        var min: Element? = nil
        
        for element in self {
            if min == nil || element < min! {
                min = element
            }
        }
        
        return min
    }
}
