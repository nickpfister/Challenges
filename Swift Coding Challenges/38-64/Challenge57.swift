//
//  Challenge57.swift
//  Challenges
//
//  Created by Nick Pfister on 10/1/23.
//

func challenge57() {
    assert(isomorphic("clap", "slap"))
    assert(isomorphic("rum", "mud"))
    assert(isomorphic("pip", "did"))
    assert(isomorphic("carry", "baddy"))
    assert(isomorphic("cream", "lapse"))
    assert(isomorphic(123123, 456456))
    assert(isomorphic(3.14159, 2.03048))
    assert(isomorphic([1, 2, 1, 2, 3], [4, 5, 4, 5, 6]))
    
    assert(!isomorphic("carry", "daddy"))
    assert(!isomorphic("did", "cad"))
    assert(!isomorphic("maim", "same"))
    assert(!isomorphic("curry", "flurry"))
    assert(!isomorphic(112233, 112211))
    
    print("Challenge 57 solved!")
    
    func isomorphic<T>(_ a: T, _ b: T) -> Bool {
        let stringA = String(describing: a)
        let stringB = String(describing: b)
        
        guard stringA.count == stringB.count else {
            return false
        }
        
        var dictionary = [Character: Character]()
        for i in 0..<stringA.count {
            let charA = stringA[stringA.index(stringA.startIndex, offsetBy: i)]
            let charB = stringB[stringB.index(stringB.startIndex, offsetBy: i)]
            if let existingValue = dictionary[charA] {
                if existingValue == charB {
                    continue
                }
                return false
            }
            if dictionary.values.contains(charB) {
                return false
            }
            
            dictionary[charA] = charB
        }
        
        return true
    }
}
