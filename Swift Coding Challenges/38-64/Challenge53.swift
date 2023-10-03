//
//  Challenge53.swift
//  Challenges
//
//  Created by Nick Pfister on 9/30/23.
//

func challenge53() {
    let (loopingLinkedList, linkBackNode) = generateLoopingLinkedList()
    assert(loopingLinkedList.findLoopStart() === linkBackNode)
    
    print("Challenge 53 solved!")
    
    func generateLoopingLinkedList() -> (
        linkedList: LinkedList<UInt32>,
        linkBackNode: LinkedListNode<UInt32>)
    {
        let list = LinkedList<UInt32>()
        var previousNode: LinkedListNode<UInt32>? = nil
        var linkBackNode: LinkedListNode<UInt32>? = nil
        let linkBackPoint = Int(arc4random_uniform(1000))

        for i in 0..<1000 {
            let node = LinkedListNode(value: arc4random())

            if i == linkBackPoint { linkBackNode = node }

            if let predecessor = previousNode {
                predecessor.next = node
            } else {
                list.start = node
            }

            previousNode = node
        }

        previousNode?.next = linkBackNode
        
        return (list, linkBackNode!)
    }
}
