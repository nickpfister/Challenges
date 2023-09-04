//
//  HWSChallenge03_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/2/23.
//

class HWSChallenge03_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let strArrays = input!.map({$0 as! [String]})
        var output = [Bool]()
        for strArray in strArrays {
            let str1 = strArray[0]
            let str2 = strArray[1]
            output.append(stringsContainSameCharacters(str1, str2))
        }
        
        return output
    }
    
    func stringsContainSameCharacters(_ str1: String, _ str2: String) -> Bool{
        return str1.sorted() == str2.sorted()
    }
}
