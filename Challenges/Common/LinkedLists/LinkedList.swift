//
//  LinkedList.swift
//  Challenges
//
//  Created by Nick Pfister on 9/29/23.
//

extension LinkedList {
    // If there is a shared midpoint, return the lower one
    func midpoint() -> LinkedListNode<T>? {
        var singleStepNode = first;
        var doubleStepNode = first?.next?.next
        
        while doubleStepNode != nil {
            singleStepNode = singleStepNode?.next
            doubleStepNode = doubleStepNode?.next?.next
        }
        
        return singleStepNode
    }
}
