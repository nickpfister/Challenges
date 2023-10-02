//
//  Challenge61.swift
//  Challenges
//
//  Created by Nick Pfister on 10/2/23.
//

func challenge61() {
    assert(primes(upTo: 10) == [2, 3, 5, 7])
    assert(primes(upTo: 11) == [2, 3, 5, 7])
    assert(primes(upTo: 12) == [2, 3, 5, 7, 11])
    
    print("Challenge 61 solved!")
    
    func primes(upTo upperBound: Int) -> [Int] {
        guard upperBound > 1 else {
            return []
        }
        guard upperBound != 2 else {
            return [2]
        }
        guard upperBound != 3 else {
            return [2, 3]
        }
        
        var primes = [2, 3]
        
        // Use the 6n + 1 6n - 1 strategy
        var k = 6
        primeloop: while k <= upperBound {
            let p1 = k - 1
            let p2 = k + 1
            k += 6
            var p1IsPrime = true
            var p2IsPrime = true
            
            for prime in primes {
                p1IsPrime = p1IsPrime && p1 % prime != 0
                p2IsPrime = p2IsPrime && p2 % prime != 0
                
                if !p1IsPrime && !p2IsPrime {
                    continue primeloop
                }
            }
            
            if p1IsPrime { primes.append(p1) }
            if p2IsPrime && p2 < upperBound { primes.append(p2) }
        }
        
        return primes
    }
}
