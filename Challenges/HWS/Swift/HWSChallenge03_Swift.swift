//
//  HWSChallenge03_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/2/23.
//

@objc class HWSChallenge03_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let stringArrays = input!.map({$0 as! [String]})
        var output = [Bool]()
        for stringArray in stringArrays {
            output.append(stringsContainSameCharacters(stringArray))
        }
        
        return output
    }
    
    func stringsContainSameCharacters(_ stringArray: [String]) -> Bool{
        guard stringArray.count == 2 else {
            fatalError("Input must contain arrays containing exactly 2 strings")
        }
        
        let str1 = stringArray[0]
        let str2 = stringArray[1]
        
        return str1.sorted() == str2.sorted()
    }
}
