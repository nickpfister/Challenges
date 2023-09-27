//
//  HWSChallenge29_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/17/23.
//

import Cocoa

class HWSChallenge29_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        return [documentDirectory()]
    }
    
    func documentDirectory() -> URL {
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }
}
