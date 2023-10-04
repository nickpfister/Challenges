//
//  Problem3.cpp
//  LeetCode
//
//  Created by Nick Pfister on 10/4/23.
//

#include "Problem3.hpp"
#include <string>
#include <unordered_set>
#include <queue>
#include <cassert>

int lengthOfLongestSubstring(std::string s) {
    auto currentSet = std::unordered_set<char>();
    auto queue = std::queue<char>();
    int longestLength {0};
    int currentLength {0};
    
    for(char& c : s) {
        if(currentSet.contains(c)) {
            char front;
            do {
                front = queue.front();
                queue.pop();
                currentLength--;
                currentSet.erase(front);
            } while (front != c);
        }
        
        currentSet.insert(c);
        queue.push(c);
        currentLength++;
        if(currentLength > longestLength) {
            longestLength = currentLength;
        }
    }
    
    return longestLength;
}

void problem3() {
    assert(lengthOfLongestSubstring("dvdf")==3);
}
