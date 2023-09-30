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
