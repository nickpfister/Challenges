//
//  HWSChallenge02_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 8/30/23.
//

@objc class HWSChallenge02_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let stringInput = input!.map({$0 as! String})
        var output = [Bool]()
        for str in stringInput {
            output.append(stringIsPalindrome(str))
        }
        
        return output
    }
    
    func stringIsPalindrome(_ str: String) -> Bool {
        return String(str.reversed()).lowercased() == str.lowercased();
    }
}
