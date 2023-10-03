//
//  HWSChallenge19_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/7/23.
//

import Cocoa

class HWSChallenge19_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let intArrays = input!.map({$0 as! [Int]})
        
        var output = [(Int, Int)]()
        for intArray in intArrays {
            let a = intArray[0]
            let b = intArray[1]
            output.append(swapTwoNumbers((a, b)))
        }
        
        return output
    }
    
    func swapTwoNumbers(_ nums: (Int, Int)) -> (Int, Int) {
        var (a, b) = nums
        a = a + b
        b = a - b
        a = a - b
        return (a, b)
    }
}
