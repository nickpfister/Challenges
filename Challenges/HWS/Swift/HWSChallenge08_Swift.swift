//
//  HWSChallenge08_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/3/23.
//

import Cocoa

class HWSChallenge08_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let stringArrays = input!.map({$0 as! [String]})
        var output = [Bool]()
        for stringArray in stringArrays {
            let str1 = stringArray[0]
            let str2 = stringArray[1]
            output.append(stringIsRotated(str1, otherString: str2))
        }
        
        return output
    }
    
    func stringIsRotated(_ str1: String, otherString str2: String) -> Bool {
        return str1.count == str2.count && (str1 + str1).contains(str2)
    }
}
