//
//  HWSChallenge04_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/2/23.
//

@objc class HWSChallenge04_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let strArrays = input!.map({$0 as! [String]})
        var output = [Bool]()
        for strArray in strArrays {
            let str1 = strArray[0]
            let str2 = strArray[1]
            output.append(str1.fuzzyContains(string: str2))
        }
        
        return output
    }
}
