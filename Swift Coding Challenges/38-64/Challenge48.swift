//
//  Challenge48.swift
//  Challenges
//
//  Created by Nick Pfister on 9/29/23.
//

func challenge48() {
    var numbers = Deque<Int>()
    numbers.pushBack(5)
    numbers.pushBack(8)
    numbers.pushBack(3)
    assert(numbers.count == 3)
    assert(numbers.popFront() == 5)
    assert(numbers.popBack() == 3)
    assert(numbers.popFront() == 8)
    assert(numbers.popBack() == nil)
    
    print("Challenge 48 solved!")
}
