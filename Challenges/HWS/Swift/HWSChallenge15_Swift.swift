//
//  HWSChallenge15_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/6/23.
//

import Cocoa

class HWSChallenge15_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let strArray = input!.map({$0 as! String})
        var output = [String]()
        for str in strArray {
            output.append(reverseWords(inString: str))
        }
        
        return output
    }
    
    func reverseWords(inString str: String) -> String {
        let regex = /\b\w+/
        return str.replacing(regex, with: {str[$0.range].reversed()})
    }
}
