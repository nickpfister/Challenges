//
//  HWSChallenge06_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/2/23.
//

@objc class HWSChallenge06_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let strArray = input!.map({$0 as! String})
        var output = [String]()
        for str in strArray {
            output.append(removingDuplicateCharacters(inString: str))
        }
        
        return output
    }
    
    func removingDuplicateCharacters(inString str: String) -> String {
        var charSet = Set<Character>()
        
        return str.filter({charSet.insert($0).inserted})
    }
}
