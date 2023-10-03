//
//  String+FuzzyCompare.swift
//  Challenges
//
//  Created by Nick Pfister on 9/2/23.
//

extension String {
    func fuzzyContains(string str: String) -> Bool{
        return self.range(of: str, options: .caseInsensitive) != nil
    }
}
