//
//  HWSChallenge36_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/20/23.
//

import Cocoa

class HWSChallenge36_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        guard let filePath = input?[0] as? String else {
            fatalError()
        }
        
        return try? [countErrorLines(inFile: filePath)]
    }
    
    func countErrorLines(inFile filePath: String) throws -> Int {
        let errorPrefix = "[ERROR]"
        guard let fileHandle = FileHandle(forReadingAtPath: filePath) else { fatalError() }
        let eof = try fileHandle.seekToEnd()
        try fileHandle.seek(toOffset: 0)
        var remainder: String? = nil
        var count = 0
        while try fileHandle.offset() < eof {
            guard let data = try fileHandle.read(upToCount: 1000) else { fatalError() }
            guard var content = String(data: data, encoding: .utf8) else { fatalError() }
            if remainder != nil { content = remainder! + content }
            var lines = content.components(separatedBy: "\n")
            remainder = lines.last
            lines.removeLast()
            for line in lines {
                if line.hasPrefix(errorPrefix) { count += 1 }
            }
        }
        
        return count
    }
}
