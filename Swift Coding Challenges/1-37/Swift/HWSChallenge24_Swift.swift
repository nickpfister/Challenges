//
//  HWSChallenge24_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/13/23.
//

import Cocoa

class HWSChallenge24_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let strArray = input!.map({$0 as! String})
        var output = [Int]()
        for str in strArray {
            output.append(addNumbers(inString: str))
        }
        
        return output
    }
    
    func addNumbers(inString str: String) -> Int {
        let regex = /\d+/
        var intVal = 0
        for match in str.matches(of: regex) {
            let subStr = str[match.range]
            intVal += Int(subStr) ?? 0
        }
        
        return intVal
    }
}
