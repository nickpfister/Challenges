//
//  Collection+CountDigits.swift
//  Challenges
//
//  Created by Nick Pfister on 9/27/23.
//

import Foundation

extension Collection<Int> {
    func countDigits(_ digit: Int) -> Int {
        var count = 0
        let digitChar = Character(String(digit))
        for number in self {
            let numberStr = String(number)
            let filtered = numberStr.filter({$0 == digitChar})
            count += filtered.count
        }
        
        return count
    }
}
