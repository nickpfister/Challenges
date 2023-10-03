//
//  BinaryTree.swift
//  Challenges
//
//  Created by Nick Pfister on 9/29/23.
//

class BinaryTree<T>: CustomStringConvertible where T: Comparable {
    var root: TreeNode<T>?
    
    init(root: TreeNode<T>? = nil) {
        self.root = root
    }
    
    convenience init(collection: any Collection<T>) {
        var root: TreeNode<T>?
        
        for element in collection {
            let node = TreeNode(element)
            if root == nil {
                root = node
                continue
            }
            
            var step = root

            while step != nil {
                let parent = step!
                if element <= parent.value  {
                    if parent.left == nil {
                        parent.left = node
                        break
                    }
                    
                    step = parent.left
                } else if element > parent.value {
                    if parent.right == nil {
                        parent.right = node
                        break
                    }
                    
                    step = parent.right
                }
            }
            
        }
        
        self.init(root: root)
    }
        
    var balanced: Bool {
        return (maxHeight(fromNode: root) - minHeight(fromNode: root)) <= 1
    }
    
    var height: Int {
        func height(fromNode node: TreeNode<T>?) -> Int {
            guard node != nil else { return 0 }
            
            return 1 + max(height(fromNode: node?.left), height(fromNode: node?.right))
        }
        
        return height(fromNode: root)
    }
    
    var description: String {
        guard root != nil else { return "(Empty tree)"}
        
        var queue = [root!]
        var output = ""
        
        while queue.count > 0 {
            var nodesAtCurrentLevel = queue.count
            
            while nodesAtCurrentLevel > 0 {
                let node = queue.removeFirst()
                output += "\(node.value) "
                
                if node.left != nil {
                    queue.append(node.left!)
                }
                
                if node.right != nil {
                    queue.append(node.right!)
                }
                
                nodesAtCurrentLevel -= 1
            }
            
            output += "\n"
        }
        
        return output + "Height: \(height)\nMinHeight: \(minHeight(fromNode: root))"
    }
    
    func traverse(_ traverseFunc: (T) -> ()) {
        nodeTraverse(fromNode: root, traverseFunc: traverseFunc)
    }
    
    func nodeTraverse(fromNode node: TreeNode<T>?, traverseFunc: (T) -> ()) {
        guard node != nil else { return }
        nodeTraverse(fromNode: node?.left, traverseFunc: traverseFunc)
        traverseFunc(node!.value)
        nodeTraverse(fromNode: node?.right, traverseFunc: traverseFunc)
    }
    
    private func maxHeight(fromNode node: TreeNode<T>?) -> Int {
        guard node != nil else { return 0 }
        
        return 1 + max(maxHeight(fromNode: node?.left), maxHeight(fromNode: node?.right))
    }
    
    private func minHeight(fromNode node: TreeNode<T>?) -> Int {
        guard node != nil else { return 0 }
        
        return 1 + min(minHeight(fromNode: node?.left), minHeight(fromNode: node?.right))
    }
}
