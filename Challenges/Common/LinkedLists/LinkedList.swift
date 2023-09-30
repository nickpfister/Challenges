//
//  LinkedList.swift
//  Challenges
//
//  Created by Nick Pfister on 9/29/23.
//

class LinkedList<T>: CustomStringConvertible where T: CustomStringConvertible {
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
    
    var description: String {
        var result = ""
        var next = first
        
        while next != nil {
            result += String(describing: next!.value)
            if next?.next != nil {
                result += "->"
            }
            next = next?.next
        }
        
        return result
    }
    
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
    
    func reverse() -> LinkedList<T> {
        var node: LinkedListNode? = first
        var forwardNext: LinkedListNode<T>? = node?.next
        node?.next = nil
        
        while forwardNext != nil {
            let cache = forwardNext!.next
            forwardNext!.next = node
            node = forwardNext
            forwardNext = cache
        }
        
        return LinkedList(first: node)
    }
    
    func reversed() -> LinkedList<T> {
        guard first != nil else {
            return LinkedList<T>(first: nil)
        }
        
        var next: LinkedListNode? = first!.next
        var currentCopy: LinkedListNode<T> = LinkedListNode(value: first!.value)
        
        while next != nil {
            var previousCopy = LinkedListNode(value: next!.value)
            previousCopy.next = currentCopy
            currentCopy = previousCopy
            next = next?.next
        }
        
        return LinkedList(first: currentCopy)
    }
}
