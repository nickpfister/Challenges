//
//  Challenge43.swift
//  Challenges
//
//  Created by Nick Pfister on 9/28/23.
//

func challenge43() {
    let linkedList = LinkedList(collection: "abcdefghijklmnopqrstuvwxyz")
    
    var traversal = [Character]()
    var node = linkedList.first
    while(node != nil) {
        traversal.append(node!.value)
        node = node!.next
    }
    
    let result = traversal.map({String($0)}).joined(separator: " ")
    assert(result == "a b c d e f g h i j k l m n o p q r s t u v w x y z")
    print("Challenge 43 solved!")
}



class LinkedList<T> {
    let first: LinkedListNode<T>?
    
    init(first: LinkedListNode<T>?) {
        self.first = first
    }
    
    convenience init(collection: any Collection<T>) {
        var first: LinkedListNode<T>? = nil
        var predecessor: LinkedListNode<T>? = nil
        for element in collection {
            let node = LinkedListNode(value: element)
            if first == nil {
                first = node
            }
            predecessor?.next = node
            predecessor = node
        }
        
        self.init(first: first)
    }
}
