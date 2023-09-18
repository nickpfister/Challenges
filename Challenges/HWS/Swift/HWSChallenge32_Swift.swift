//
//  HWSChallenge32_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/18/23.
//

import Foundation

class HWSChallenge32_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let strArrays = input!.map({$0 as! [String]})
        
        var output = [Int]()
        for strArray in strArrays {
            let path = strArray[0]
            let str = strArray[1]
            output.append(wordFrequencyInFile(atPath: path, word: str))
        }
        
        return output
    }
    
    func wordFrequencyInFile(atPath path: String, word str: String) -> Int {
        guard let contents = try? String(contentsOfFile: path) else {
            fatalError()
        }
        let regex = /\b[\w|']+/
        
        var count = 0
        for match in contents.matches(of: regex) {
            if(String(contents[match.range])==str) {
                count += 1
            }
        }
        
        return count
    }
}
