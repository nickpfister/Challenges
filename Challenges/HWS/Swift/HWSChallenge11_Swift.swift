//
//  HWSChallenge11_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/4/23.
//

import Cocoa

class HWSChallenge11_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let strArrays = input!.map({$0 as! [String]})
        var output = [Bool]()
        for strArray in strArrays {
            let str1 = strArray[0]
            let str2 = strArray[1]
            output.append(stringMatchesAllBut3Letters(str1, withString: str2))
        }
        
        return output
    }
    
    func stringMatchesAllBut3Letters(_ str1: String, withString str2: String) -> Bool {
        guard str1.count == str2.count else { return false }
        
        var nonMatches = 0;
        
        for i in 0..<str1.count {
            let str1Index = str1.index(str1.startIndex, offsetBy: i)
            let str2Index = str2.index(str2.startIndex, offsetBy: i)
            if str1[str1Index] != str2[str2Index] {
                nonMatches += 1
                if nonMatches > 3 { return false }
            }
        }
        
        return true
    }
}
