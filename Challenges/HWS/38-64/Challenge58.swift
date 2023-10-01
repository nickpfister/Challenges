//
//  Challenge58.swift
//  Challenges
//
//  Created by Nick Pfister on 10/1/23.
//

func challenge58() {
    assert(balancedBrackets("()"))
    assert(balancedBrackets("([])"))
    assert(balancedBrackets("([])(<{}>)"))
    assert(balancedBrackets("([]{}<[{}]>)"))
    assert(balancedBrackets(""))
    assert(!balancedBrackets("}{"))
    assert(!balancedBrackets("([)]"))
    assert(!balancedBrackets("([)"))
    assert(!balancedBrackets("(["))
    assert(!balancedBrackets("[<<<{}>>]"))
    assert(!balancedBrackets("hello"))
    
    print("Challenge 58 solved!")
    
    func balancedBrackets(_ string: String) -> Bool {
        let bracketLookup: [Character: Character] =
            ["{":"}", "(":")", "[":"]", "<":">"]
        var unMatchedStack = [Character]()
        
        for character in string {
            if unMatchedStack.isEmpty {
                unMatchedStack.append(character)
                print(unMatchedStack)
                continue
            }
            if let match = bracketLookup[unMatchedStack.last!] {
                if match == character {
                    unMatchedStack.removeLast()
                } else {
                    unMatchedStack.append(character)
                }
            } else {
                unMatchedStack.append(character)
            }
            
            print(unMatchedStack)
        }
        
        return unMatchedStack.count == 0
    }
}
