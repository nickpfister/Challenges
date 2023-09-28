//
//  Challenge43.swift
//  Challenges
//
//  Created by Nick Pfister on 9/28/23.
//

func challenge43() {
    var linkedList: LinkedList<Character>? = nil
    var predecessor: Node<Character>? = nil
    for letter in "abcdefghijklmnopqrstuvwxyz" {
        let node = Node(value: letter)
        if linkedList == nil {
            linkedList = LinkedList(first: node)
        }
        
        predecessor?.next = node
        predecessor = node
    }
    
    var traversal = [Character]()
    var node = linkedList?.first
    while(node != nil) {
        traversal.append(node!.value)
        node = node!.next
    }
    
    let result = traversal.map({String($0)}).joined(separator: " ")
    assert(result == "a b c d e f g h i j k l m n o p q r s t u v w x y z")
    print("Challenge 43 solved!")
}

class Node<T> {
    var value: T
    var next: Node<T>? = nil
    
    init(value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    let first: Node<T>?
    
    init(first: Node<T>?) {
        self.first = first
    }
}
