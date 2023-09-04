//
//  HWSChallenge01b_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 8/30/23.
//

class HWSChallenge01b_Swift: HWSChallenge01a_Swift {
    override func foundDuplicateCharacters(inString str: String) -> Bool {
        return Set(str).count != str.count
    }
}
