//
//  Problem3.cpp
//  LeetCode
//
//  Created by Nick Pfister on 10/4/23.
//

#include "Problem3.hpp"
#include <string>
#include <unordered_map>
#include <cassert>
#include <iostream>

int lengthOfLongestSubstring(std::string s) {
    auto lastSeen = std::unordered_map<char, int>();
    int longestLength {0};
    int currentLength {0};
    auto count = s.size();
    
    for(auto i = 0; i < count; ++i) {
        char c = s[i];
        
        if(lastSeen.contains(c)) {
            // Decrement by 1 to reduce nesting
            int length = i - lastSeen[c] - 1;
            
            // Only assign if last seen is less than
            // the current length
            if (currentLength > length) {
                currentLength = length;
            }
        }
        
        currentLength++;
        if(currentLength > longestLength) {
            longestLength = currentLength;
        }
        
        lastSeen[c] = i;
    }
    
    return longestLength;
}

void problem3() {
    assert(lengthOfLongestSubstring("dvdf")==3);
    assert(lengthOfLongestSubstring("tmmzuxt")==5);
    
    std::cout<<"Problem 3 solved!"<<std::endl;
}
