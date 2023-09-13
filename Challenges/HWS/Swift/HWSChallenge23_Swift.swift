//
//  HWSChallenge23_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/13/23.
//

import Cocoa

class HWSChallenge23_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let strArray = input!.map({$0 as! String})
        var output = [Bool]()
        for str in strArray {
            output.append(stringIsInteger(str))
        }
        
        return output
    }
    
    func stringIsInteger(_ str: String) -> Bool {
        return !str.contains(/\D/)
    }
}
