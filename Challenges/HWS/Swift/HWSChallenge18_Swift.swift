//
//  HWSChallenge18_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/7/23.
//

import Cocoa

class HWSChallenge18_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let intArrays = input!.map({$0 as! [Int]})
        
        var output = [Int]()
        for intArray in intArrays {
            let base = intArray[0]
            let exp = intArray[1]
            output.append(pow(ofBaseInteger: base, toExponent: exp))
        }
        
        return output
    }
    
    func pow(ofBaseInteger base: Int,
             toExponent exp: Int) -> Int {
        return exp > 0 ? base * pow(ofBaseInteger: base, toExponent: exp - 1) : 1
    }
}
