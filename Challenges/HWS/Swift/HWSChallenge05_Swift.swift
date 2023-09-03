//
//  HWSChallenge05_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/2/23.
//

@objc class HWSChallenge05_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let strArrays = input!.map({$0 as! [Any]})
        var output = [Int]()
        for strArray in strArrays {
            let chr = Character(strArray[0] as! String)
            let str = strArray[1] as! String
            output.append(countOccurances(ofCharacter: chr, inString: str))
        }
        
        return output
    }
    
    func countOccurances(ofCharacter chr: Character, inString str: String) -> Int {
        return str.reduce(0) {$1 == chr ? $0 + 1 : $0}
    }
}
