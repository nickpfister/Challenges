//
//  HWSChallenge1a_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 8/29/23.
//

@objc class HWSChallenge1a_Swift: NSObject, NPChallenge {
    func solve() {
        printResult(forInput: "No duplicates")
        printResult(forInput: "abcdefghijklmnopqrstuvwxyz")
        printResult(forInput: "Hello, world!")
    }
    
    func printResult(forInput input: String) {
        let result = foundDuplicateCharacters(inText: input)
        if result {
            print("Text \"\(input)\" contains duplicate characters.")
        } else {
            print("Text \"\(input)\" does not contain duplicate characters.")
        }
    }
    
    func foundDuplicateCharacters(inText text: String) -> Bool {
        var uniqueCharacters = Set<Character>()
        for letter in text {
            let (inserted, _) = uniqueCharacters.insert(letter)
            if !inserted { return true }
        }
        return false;
    }
}
