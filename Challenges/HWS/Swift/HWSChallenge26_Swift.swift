//
//  HWSChallenge26_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/15/23.
//

import Cocoa

class HWSChallenge26_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let intArrays = input!.map({$0 as! [Int]})
        
        var output = [Int]()
        for intArray in intArrays {
            let a = intArray[0];
            let b = intArray[1];
            output.append(subtract(a, from: b))
        }
        
        return output
    }
    
    func subtract(_ a: Int, from b: Int) -> Int {
        return ~a + 1 + b
    }
}
