//
//  TreeNode.swift
//  Challenges
//
//  Created by Nick Pfister on 9/29/23.
//

class TreeNode<T> where T: Comparable {
    var left: TreeNode<T>?
    var right: TreeNode<T>?
    var value: T
    
    init(_ value: T) {
        self.value = value
    }
}
