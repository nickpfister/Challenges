//
//  Challenge54.swift
//  Challenges
//
//  Created by Nick Pfister on 9/29/23.
//

func challenge54() {
    assert(BinaryTree(collection: [2, 1, 3]).balanced)
    assert(BinaryTree(collection: [5, 1, 7, 6, 2, 1, 9]).balanced)
    assert(BinaryTree(collection: [5, 1, 7, 6, 2, 1, 9, 1]).balanced)
    assert(BinaryTree(collection: [5, 1, 7, 6, 2, 1, 9, 1, 3]).balanced)
    assert(BinaryTree(collection: [50, 25, 100, 26, 101, 24, 99]).balanced)
    assert(BinaryTree(collection: ["k", "t", "d", "a", "z", "m", "f"]).balanced)
    assert(BinaryTree(collection: [1]).balanced)
    assert(!BinaryTree(collection: [1, 2, 3, 4, 5]).balanced)
    assert(!BinaryTree(collection: [10, 5, 4, 3, 2, 1, 11, 12, 13, 14, 15]).balanced)
    assert(!BinaryTree(collection: ["f", "d", "c", "e", "a", "b"]).balanced)
    
    print("Challenge 54 solved!")
}
