//
//  Challenge38.swift
//  Challenges
//
//  Created by Nick Pfister on 9/27/23.
//

func challenge38() {
    assert([1, 2, 3, 4].findNSmallest(3) == [1, 2, 3])
    assert(["q", "f", "k"].findNSmallest(10) == ["f", "k", "q"])
    assert([256, 16].findNSmallest(3) == [16, 256])
    assert([String]().findNSmallest(3) == [])
    print("Challenge 38 solved!")
}

extension Collection {
    func findNSmallest(_ n: Int) -> [Element] where Element: Comparable {
        let size = n < count ? n : count
        return Array(self.sorted(by: {$0 < $1})[..<size])
    }
}
