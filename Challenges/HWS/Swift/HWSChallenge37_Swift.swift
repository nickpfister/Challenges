//
//  HWSChallenge37_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/27/23.
//

import Foundation

class HWSChallenge37_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        guard let inputArrays = input as? [[Any]] else { fatalError() }
        
        var output = [Int]();
        for inputArray in inputArrays {
            guard let digit: Int = inputArray[0] as? Int else { fatalError() }
            guard let intArray: [Int] = inputArray[1] as? [Int] else { fatalError() }
            
            output.append(intArray.countDigits(digit))
        }
        
        return output
    }
}
