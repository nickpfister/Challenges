//
//  HWSChallenge21_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/10/23.
//

import Cocoa

class HWSChallenge21_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let intArray = input!.map({$0 as! Int})
        
        var output = [(Int?, Int?)]()
        for intVal in intArray {
            output.append(closestNumbersWithEqualBinaryOnes(intVal))
        }
        
        return output
    }
    
    func closestNumbersWithEqualBinaryOnes(_ intVal: Int) -> (Int?, Int?) {
        guard intVal > 0 && intVal < Int.max else { return (nil, nil) }
        
        let ones = binaryOnes(ofInteger: intVal)
        
        var last: Int? = nil
        var next: Int? = nil
        
        for i in (intVal + 1)..<Int.max {
            if binaryOnes(ofInteger: i) == ones {
                next = i
                break
            }
        }
        
        for i in (1..<intVal).reversed() {
            if binaryOnes(ofInteger: i) == ones {
                last = i
                break
            }
        }
        
        return (last, next)
    }
    
    func binaryOnes(ofInteger intVal: Int) -> Int {
        var ones = 0;
        var mIntVal = intVal
        
        repeat {
            if mIntVal % 2 == 1 {
                ones += 1
            }
            mIntVal /= 2
        } while mIntVal > 0
        
        return ones
    }
}
