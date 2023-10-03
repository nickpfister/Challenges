//
//  HWSChallenge16_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/7/23.
//

import Cocoa

class HWSChallenge16_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let intArray = input!.map({$0 as! Int})
        
        var output = [String]()
        for intVal in intArray {
            output.append(fizzBuzz(intVal))
        }
        
        return output
    }
    
    func fizzBuzz(_ intVal: Int) -> String {
        var outputArray = [String]()
        
        if intVal % 3 == 0 { outputArray.append("Fizz") }
        if intVal % 5 == 0 { outputArray.append("Buzz") }
        
        return outputArray.isEmpty ? "\(intVal)" : String(outputArray.joined(separator: " "))
    }
}
