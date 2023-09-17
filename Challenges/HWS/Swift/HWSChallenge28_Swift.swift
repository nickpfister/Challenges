//
//  HWSChallenge28_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/17/23.
//

import Cocoa

class HWSChallenge28_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        guard let path = input?.first as? String else { fatalError() }
        
        for i in 1..<input!.count {
            guard let str = input?[i] as? String else { fatalError() }
            logToFile(atPath: path, message: str)
        }
        
        return nil
    }
    
    func logToFile(atPath path: String, message str: String) {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .medium
        
        let dateStr = formatter.string(from: date)
        let message = "\(dateStr): \(str)\n"
        let messageData = message.data(using: .utf8)
        
        if !FileManager.default.fileExists(atPath: path) {
            FileManager.default.createFile(atPath: path, contents: messageData)
        } else {
            let fileHandle = FileHandle(forWritingAtPath: path)!
            try! fileHandle.seekToEnd()
            try! fileHandle.write(contentsOf: messageData!)
        }
    }
}
