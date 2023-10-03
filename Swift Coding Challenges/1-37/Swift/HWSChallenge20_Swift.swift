//
//  HWSChallenge20_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/9/23.
//

import Cocoa

class HWSChallenge20_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let intArray = input!.map({$0 as! Int})
        
        var output = [Bool]()
        for intVal in intArray {
            output.append(isPrime(number: intVal))
        }
        
        return output
    }
    
    func isPrime(number intVal: Int) -> Bool {
        guard intVal >= 1 else { return false }
        guard intVal != 2 && intVal != 3 else { return true }
        guard intVal % 2 != 0 && intVal % 3 != 0 else { return false }
        
        let sqrtVal = Int(sqrt(Double(intVal)))
        
        for i in stride(from: 5, to: sqrtVal, by: 6) {
            guard intVal % i != 0 else { return false }
            guard intVal % (i + 2) != 0 else { return false }
        }
        
        return true
    }
}
