//
//  HWSChallenge09_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/3/23.
//

import Cocoa

class HWSChallenge09_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let stringInput = input!.map({$0 as! String})
        var output = [Bool]()
        for str in stringInput {
            output.append(stringIsPangram(str))
        }
        
        return output
    }
    
    func stringIsPangram(_ str: String) -> Bool {
        let strSet = CharacterSet(charactersIn: str.lowercased())
        let alphabetSet = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz")
        
        return strSet.isSuperset(of: alphabetSet)
    }
}
