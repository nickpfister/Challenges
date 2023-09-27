//
//  HWSChallenge35_Swift.swift
//  Challenges
//
//  Created by Nick Pfister on 9/20/23.
//

import Cocoa


class HWSChallenge35_Swift: NSObject, NPChallenge {
    func solve(forInput input: [Any]?) -> [Any]? {
        guard let dir = input?[0] as? String else {
            fatalError()
        }
        
        convertJpegsToPngs(inDirectory: dir)
        return nil
    }
    
    func convertJpegsToPngs(inDirectory dir: String) {
        let url = URL(filePath: dir)
        guard let image = NSImage(contentsOf: url) else { fatalError() }
        guard let tiffData = image.tiffRepresentation else { fatalError() }
        guard let bitmapRep = NSBitmapImageRep(data: tiffData) else { fatalError() }
        guard let pngData = bitmapRep.representation(using: .png, properties: [:]) else { fatalError() }
        try! pngData.write(to: url.deletingPathExtension().appendingPathExtension("png"))
    }
}
