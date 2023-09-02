//
//  HWSChallenge05_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/2/23.
//

@objc class HWSChallenge05_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let pairs = input!.map({$0 as! [Any]})
        var output = [Int]()
        for pair in pairs {
            let chr = Character(pair[0] as! String)
            let str = pair[1] as! String
            output.append(countOccurances(ofCharacter: chr, inString: str))
        }
        
        return output
    }
    
    func countOccurances(ofCharacter chr: Character, inString str: String) -> Int {
        return str.reduce(0) {$1 == chr ? $0 + 1 : $0}
    }
}
