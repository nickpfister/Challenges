//
//  HWSChallenge27_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/15/23.
//

class HWSChallenge27_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        guard let path = input?.first as? String else { fatalError() }
        
        var output = [String]()
        for i in 1..<input!.count {
            guard let lines = input?[i] as? Int else { fatalError() }
            output.append(lastLines(lines, ofFileAtPath: path))
        }
        
        return output
    }
    
    func lastLines(_ lines: Int, ofFileAtPath path: String) -> String {
        guard let content = try? String(contentsOfFile: path) else { fatalError() }
        
        var lineArray = [String]()
        
        for line in content.components(separatedBy: "\n").reversed() {
            if lineArray.count >= lines { break }
            lineArray.append(line)
        }
        
        return String(lineArray.joined(separator: ", "))
    }
}
