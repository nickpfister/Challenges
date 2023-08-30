//
//  HWSChallenge1b_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 8/30/23.
//

@objc class HWSChallenge1b_Swift: HWSChallenge1a_Swift {
    override func foundDuplicateCharacters(inText text: String) -> Bool {
        return Set(text).count == text.count
    }
}
