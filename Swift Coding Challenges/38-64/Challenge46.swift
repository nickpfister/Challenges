//
//  Challenge46.swift
//  Challenges
//
//  Created by Nick Pfister on 9/29/23.
//

func challenge46() {
    assert([1, 2, 3].nickMap { String($0) } == ["1", "2", "3"])
    assert(["1", "2", "3"].nickMap { Int($0)! } == [1, 2, 3])
    
    print("Challenge 46 solved!")
}

extension Collection {
    func nickMap<T>(_ mapFunction: (Element) throws -> (T)) rethrows -> [T] {
        var mapped = [T]()
        
        for element in self {
            try mapped.append(mapFunction(element))
        }
        
        return mapped
    }
}
