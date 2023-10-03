//
//  Challenge45.swift
//  Challenges
//
//  Created by Nick Pfister on 9/29/23.
//

func challenge45() {
    let tree = BinaryTree(collection: [2, 1, 3])
    
    var values = [Int]()
    tree.traverse { values.append($0) }
    assert(values == [1, 2, 3])
    
    var sum = 0
    tree.traverse { sum += $0 }
    assert(sum == 6)
    
    print("Challenge 45 solved!")
}
