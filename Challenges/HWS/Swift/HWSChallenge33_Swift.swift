//
//  HWSChallenge33_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/19/23.
//

import Cocoa

class HWSChallenge33_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        guard let dir = input?[0] as? String else {
            fatalError()
        }
        
        return findDuplicateFiles(inDirectory: dir)
    }
    
    func findDuplicateFiles(inDirectory dir: String) -> [String] {
        let fm = FileManager.default
        guard let files = fm.enumerator(at: URL(filePath: dir), includingPropertiesForKeys: nil) else {
            return []
        }
        var duplicates = Set<String>()
        var seen = Set<String>()
        
        for case let file as URL in files {
            if file.hasDirectoryPath { continue }
            let fileName = file.lastPathComponent
            if seen.contains(fileName) {
                duplicates.insert(fileName)
            } else {
                seen.insert(fileName)
            }
        }
        
        return Array(duplicates)
    }
}
