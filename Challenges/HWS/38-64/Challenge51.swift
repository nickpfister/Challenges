//
//  Challenge51.swift
//  Challenges
//
//  Created by Nick Pfister on 9/30/23.
//

func challenge51() {
    let forwardAlphabet = LinkedList(collection: "abcdefghijklmnopqrstuvwxyz")
    let forwardAlphabetCopy = LinkedList(collection: "abcdefghijklmnopqrstuvwxyz")
    let reverseAlphabet = LinkedList(collection: "zyxwvutsrqponmlkjihgfedcba")
    assert(String(describing: forwardAlphabet.reversed()) == String(describing: reverseAlphabet))
    
    // Make sure we didn't alter the original linked list.
    assert(String(describing: forwardAlphabet) == String(describing: forwardAlphabetCopy))
    
    print("Challenge 51 solved!")
}
