//
//  HWSChallenge30_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/18/23.
//

import Cocoa

class HWSChallenge30_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        guard let path = input?.first as? String else { fatalError() }
        
        var output = [String]()
        output.append(contentsOf:jpegsCreatedRecently(inDirectory: path))
        
        return output
    }
    
    func jpegsCreatedRecently(inDirectory dirPath: String) -> [String] {
        guard let contents = try? FileManager.default.contentsOfDirectory(atPath: dirPath) else {
            fatalError()
        }
        
        var recentJpegs = [String]()
        
        for fileName in contents {
            let lowercase = fileName.lowercased()
            if lowercase.hasSuffix(".jpeg") || lowercase.hasSuffix(".jpg") {
                guard let attributes = try? FileManager.default.attributesOfItem(atPath: "\(dirPath)\(fileName)") else { fatalError() }
                
                if let createdDate = attributes[FileAttributeKey.creationDate] as? Date {
                    if createdDate.addingTimeInterval(2 * 24 * 60 * 60) > Date() {
                        recentJpegs.append(fileName)
                    }
                }
            }
        }
        
        return recentJpegs
    }
}
