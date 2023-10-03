//
//  HWSChallenge14_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/6/23.
//

import Cocoa

class HWSChallenge14_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let strArray = input!.map({$0 as! String})
        var output = [Any]()
        for str in strArray {
            let permutations = permutations(ofString: str)
            output.append(permutations)
            output.append("Total permutations: \(permutations.count)")
        }
        
        return output
    }
    
    func permutations(ofString str: String) -> Set<String> {
        guard str.count > 1 else {
            return [str]
        }
        
        var output = Set<String>()
        
        for (index, element) in str.enumerated() {
            // It could be posible to speed this up by using two substring ranges
            var remainingStr = str
            let indexToRemove = remainingStr.index(remainingStr.startIndex, offsetBy: index)
            remainingStr.remove(at: indexToRemove)
            
            let subPerms = permutations(ofString: remainingStr)
            for subPerm in subPerms {
                output.insert(String(element) + subPerm)
            }
        }
        
        return output
    }
}
