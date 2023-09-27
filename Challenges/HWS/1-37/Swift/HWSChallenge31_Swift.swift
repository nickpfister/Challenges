//
//  HWSChallenge31_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/18/23.
//

import Cocoa

class HWSChallenge31_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        guard let copyFrom = input?[0] as? String else { fatalError() }
        guard let copyTo = input?[1] as? String else { fatalError() }
        
        var output = [Bool]()
        output.append(copy(directory: copyFrom, toDirectory: copyTo))
        
        return output
    }
    
    func copy(directory copyFrom: String, toDirectory copyTo: String) -> Bool {
        var isDirectory: ObjCBool = false;
        guard FileManager.default.fileExists(atPath: copyFrom, isDirectory: &isDirectory) else {
            print("From location does not exist.")
            return false
        }
        guard isDirectory.boolValue else {
            print("From location is not a directory.")
            return false
        }
        guard FileManager.default.isReadableFile(atPath: copyFrom) else {
            print("From location is not readable.")
            return false
        }
        
        let fromUrl = URL(filePath: copyFrom)
        let toUrl = URL(filePath: copyTo)
        
        do {
            try FileManager.default.copyItem(at: fromUrl, to: toUrl)
        } catch {
            print(error.localizedDescription)
            return false
        }
        
        return true
    }
}
