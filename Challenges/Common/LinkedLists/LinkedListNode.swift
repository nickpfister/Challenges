//
//  LinkedListNode.swift
//  Challenges
//
//  Created by Nick Pfister on 9/29/23.
//

class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode<T>? = nil
    
    init(value: T) {
        self.value = value
    }
}
