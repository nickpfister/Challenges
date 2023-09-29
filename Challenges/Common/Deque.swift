//
//  Deque.swift
//  Challenges
//
//  Created by Nick Pfister on 9/29/23.
//

struct Deque<T> {
    private var array = [T]()
    
    var count: Int { array.count }
    
    mutating func pushBack(_ value: T) {
        array.append(value)
    }
    
    mutating func pushFront(_ value: T) {
        array.insert(value, at: 0)
    }
    
    mutating func popBack() -> T? {
        if array.isEmpty { return nil }
        
        return array.removeLast()
    }
    
    mutating func popFront() -> T? {
        if array.isEmpty { return nil }
        
        return array.removeFirst()
    }
}
