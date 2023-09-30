//
//  LinkedList.swift
//  Challenges
//
//  Created by Nick Pfister on 9/29/23.
//

class LinkedList<T>: CustomStringConvertible where T: CustomStringConvertible {
    var start: LinkedListNode<T>? = nil
    
    init(first: LinkedListNode<T>? = nil) {
        self.start = first
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
        var next = start
        
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
        var singleStepNode = start;
        var doubleStepNode = start?.next?.next
        
        while doubleStepNode != nil {
            singleStepNode = singleStepNode?.next
            doubleStepNode = doubleStepNode?.next?.next
        }
        
        return singleStepNode
    }
    
    func reverse() -> LinkedList<T> {
        var node: LinkedListNode? = start
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
        guard start != nil else {
            return LinkedList<T>(first: nil)
        }
        
        var next: LinkedListNode? = start!.next
        var currentCopy: LinkedListNode<T> = LinkedListNode(value: start!.value)
        
        while next != nil {
            let previousCopy = LinkedListNode(value: next!.value)
            previousCopy.next = currentCopy
            currentCopy = previousCopy
            next = next?.next
        }
        
        return LinkedList(first: currentCopy)
    }
    
    func findLoopStart() -> LinkedListNode<T>? {
        var turtle = start
        var hare = start
        
        while hare != nil {
            hare = hare?.next?.next
            turtle = turtle?.next
            
            if hare === turtle {
                break
            }
        }
        
        if hare == nil {
            return nil
        }
        
        turtle = start
        
        while hare !== turtle {
            hare = hare?.next
            turtle = turtle?.next
        }
        
        return hare
    }
}
