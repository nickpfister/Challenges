//
//  HWSChallenge10_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/4/23.
//

import Cocoa

class HWSChallenge10_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let strArray = input!.map({$0 as! String})
        var output = [(Int, Int)]()
        for str in strArray {
            output.append(numVowelsAndConsonants(inString: str))
        }
        
        return output
    }
    
    func numVowelsAndConsonants(inString str: String) -> (Int, Int) {
        var count = (0, 0)
        let vowelSet = CharacterSet(charactersIn: "aeiou")
        let consonantSet = CharacterSet(charactersIn: "bcdfghjklmnpqrstvwxyz")
        let lowercaseStr = str.lowercased()
        for chr in lowercaseStr {
            let ucChr = Unicode.Scalar("\(chr)")!
            if vowelSet.contains(ucChr) {
                count.0 += 1
            } else if consonantSet.contains(ucChr) {
                count.1 += 1
            }
        }
        
        return count
    }
}
