//
//  HWSChallenge25_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/15/23.
//

import Cocoa

class HWSChallenge25_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        let intArray = input!.map({$0 as! Int})
        
        var output = [Int]()
        for intVal in intArray {
            output.append(squareRoot(ofInteger: intVal))
        }
        
        return output
    }
    
    func squareRoot(ofInteger intVal: Int) -> Int {
        var lower: Int = 1
        var higher: Int = intVal / 2
        var midpoint: Int = intVal / 4
        var sqr = midpoint * midpoint
        
        while sqr != intVal && midpoint != lower {
            if sqr < intVal {
                lower = midpoint
            } else {
                higher = midpoint
            }
            
            midpoint = (higher + lower) / 2
            sqr = midpoint * midpoint
        }
        
        return midpoint
    }
}
