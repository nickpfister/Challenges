//
//  HWSChallenge17_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 8/30/23.
//

@objc class HWSChallenge17_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let intInput = input!.map({$0 as! [Int]})
        
        var output = [Int]()
        for intArray in intInput {
            let range = intArray[0]..<(intArray[1] + 1)
            output.append(randomNumber(inRange: range))
        }
        
        return output
    }
    
    func randomNumber(inRange range:Range<Int>) -> Int {
        return Int.random(in: range)
    }
}
