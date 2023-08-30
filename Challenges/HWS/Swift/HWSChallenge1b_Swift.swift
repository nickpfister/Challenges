//
//  HWSChallenge1b_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 8/30/23.
//

@objc class HWSChallenge1b_Swift: HWSChallenge1a_Swift {
    override func foundDuplicateCharacters(inString str: String) -> Bool {
        return Set(str).count != str.count
    }
}
