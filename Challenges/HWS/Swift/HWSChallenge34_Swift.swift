//
//  HWSChallenge34_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/20/23.
//

import Cocoa

class HWSChallenge34_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        guard let dir = input?[0] as? String else {
            fatalError()
        }
        
        return findExecutableFiles(inDirectory: dir)
    }
    
    func findExecutableFiles(inDirectory dir: String) -> [String] {
        let url = URL(filePath: dir)
        let fm = FileManager.default
        guard let fileEnum = fm.enumerator(
            at: url,
            includingPropertiesForKeys: nil,
            options: .skipsSubdirectoryDescendants) else {
            fatalError()
        }
        
        var execs = Set<String>()
        
        for case let file as URL in fileEnum {
            if file.hasDirectoryPath { continue }
            let path = file.path()
            if fm.isExecutableFile(atPath: path) {
                execs.insert(file.lastPathComponent)
            }
        }
        
        return Array(execs)
    }
}
