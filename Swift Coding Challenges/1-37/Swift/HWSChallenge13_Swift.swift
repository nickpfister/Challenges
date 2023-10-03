//
//  HWSChallenge13_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/6/23.
//

import Cocoa

class HWSChallenge13_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let strArray = input!.map({$0 as! String})
        var output = [String]()
        for str in strArray {
            output.append(runLengthEncoding(ofString: str))
        }
        
        return output
    }
    
    func runLengthEncoding(ofString str: String) -> String {
        var output = ""
        
        guard !str.isEmpty else {
            return output
        }
        
        var currentLetter = str.first!
        var currentCount = 1
        
        for letter in str[str.index(after: str.startIndex)..<str.endIndex] {
            if letter == currentLetter {
                currentCount += 1
            } else {
                output += "\(String(currentLetter))\(currentCount)"
                currentCount = 1
                currentLetter = letter
            }
        }
        
        output += "\(String(currentLetter))\(currentCount)"
        return output
    }
}
