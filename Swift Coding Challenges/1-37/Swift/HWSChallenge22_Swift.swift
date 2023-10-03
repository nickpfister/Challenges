//
//  HWSChallenge22_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/13/23.
//

import Cocoa

class HWSChallenge22_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let intArray = input!.map({$0 as! UInt8})
        
        var output = [UInt8]()
        for intVal in intArray {
            output.append(binaryReverse(ofInteger: intVal))
        }
        
        return output
    }
    
    func binaryReverse(ofInteger intVal: UInt8) -> UInt8 {
        var mIntVal = intVal;
        var rev: UInt8 = 0;
        
        for _ in 0..<8 {
            rev <<= 1
            rev ^= mIntVal & 1
            mIntVal >>= 1
        }
        
        return rev
    }
}
