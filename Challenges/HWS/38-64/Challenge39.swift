//
//  Challenge39.swift
//  Challenges
//
//  Created by Nick Pfister on 9/27/23.
//

func challenge39() {
    assert(["a", "ab", "abc"].sortedByLength() == ["abc", "ab", "a"])
    assert(["paul", "taylor", "adele"].sortedByLength() == ["taylor", "adele", "paul"])
    assert([String]().sortedByLength() == [])
    print("Challenge 39 solved!")
}

extension Collection<String> {
    func sortedByLength() -> [String] {
        return self.sorted(by: { $0.count > $1.count })
    }
}
