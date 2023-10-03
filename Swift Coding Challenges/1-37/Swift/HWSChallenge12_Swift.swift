//
//  HWSChallenge12_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/6/23.
//

import Cocoa

class HWSChallenge12_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let strArray = input!.map({$0 as! String})
        var output = [String]()
        for str in strArray {
            output.append(longestPrefix(ofString: str))
        }
        
        return output
    }
    
    func longestPrefix(ofString str: String) -> String {
        let words = str.components(separatedBy: " ")
        let principleStr = words[0]
        var longestPrefix = ""
        var testPrefix = longestPrefix
        
        for chr in principleStr {
            testPrefix.append(chr)
            for word in words {
                if !word.hasPrefix(testPrefix) { return longestPrefix }
            }
            longestPrefix = testPrefix
        }
        
        return longestPrefix
    }
}
