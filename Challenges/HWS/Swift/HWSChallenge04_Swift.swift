//
//  HWSChallenge04_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/2/23.
//

@objc class HWSChallenge04_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let stringArrays = input!.map({$0 as! [String]})
        var output = [Bool]()
        for stringArray in stringArrays {
            let str1 = stringArray[0]
            let str2 = stringArray[1]
            output.append(str1.fuzzyContains(string: str2))
        }
        
        return output
    }
}
