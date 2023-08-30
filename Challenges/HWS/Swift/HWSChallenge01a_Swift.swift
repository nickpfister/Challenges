//
//  HWSChallenge01a_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 8/29/23.
//

@objc class HWSChallenge01a_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]) -> [Any] {
        let stringInput = input.map({$0 as! String})
        var output = [Bool]()
        for str in stringInput {
            output.append(foundDuplicateCharacters(inString: str))
        }
        
        return output
    }
    
    func foundDuplicateCharacters(inString str: String) -> Bool {
        var uniqueCharacters = Set<Character>()
        for letter in str {
            let (inserted, _) = uniqueCharacters.insert(letter)
            if !inserted { return true }
        }
        return false;
    }
}
