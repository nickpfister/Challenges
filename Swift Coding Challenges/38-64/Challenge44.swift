//
//  Challenge44.swift
//  Challenges
//
//  Created by Nick Pfister on 9/29/23.
//

func challenge44() {
    assert(LinkedList(collection: [1, 2, 3, 4, 5]).midpoint()?.value == 3)
    assert(LinkedList(collection: [1, 2, 3, 4]).midpoint()?.value == 2)
    assert(LinkedList(collection: "abcdefghijklmnopqrstuvwxyz").midpoint()?.value == "m")
    assert(LinkedList(collection: [1,2]).midpoint()?.value == 1)
    assert(LinkedList(collection: [1]).midpoint()?.value == 1)
    print("Challenge 44 solved!")
}
