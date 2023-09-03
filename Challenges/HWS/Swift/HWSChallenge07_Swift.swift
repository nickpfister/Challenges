//
//  HWSChallenge07_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/2/23.
//

class HWSChallenge07_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let strArray = input!.map({$0 as! String})
        var output = [String]()
        for str in strArray {
            output.append(condensingWhitespace(inString: str))
        }
        
        return output
    }
    
    func condensingWhitespace(inString str: String) -> String {
        let regex = /\s+/
        
        return str.replacing(regex, with: {_ in " "})
    }
}
