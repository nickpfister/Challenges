//
//  Problem5.cpp
//  LeetCode
//
//  Created by Nick Pfister on 10/13/23.
//

#include "Problem5.hpp"
#include <string>
#include <cassert>
#include <iostream>

std::string longestPalindrome(std::string s) {
    auto strLen = s.length();
    std::string longestSubstr = s.substr(0, 1);
    int longestLen = 1;
    
    for(auto i = 0; i < strLen - 1; i++) {
        auto lowOdd = i - 1;
        auto highOdd = i + 1;
        while(lowOdd >= 0 && highOdd < strLen && s[lowOdd] == s[highOdd]){
            auto len = highOdd - lowOdd + 1;
            if (len > longestLen) {
                longestLen = len;
                longestSubstr = s.substr(lowOdd, len);
            }
            lowOdd--;
            highOdd++;
        }
        
        auto lowEven = i;
        auto highEven = i + 1;
        while(lowEven >= 0 && highEven < strLen && s[lowEven] == s[highEven]){
            auto len = highEven - lowEven + 1;
            if (len > longestLen) {
                longestLen = len;
                longestSubstr = s.substr(lowEven, len);
            }
            lowEven--;
            highEven++;
        }
    }
    
    return longestSubstr;
}

void problem5() {
    assert(longestPalindrome("cbbd") == "bb");
    assert(longestPalindrome("babad") == "bab");
    std::cout << "Problem 5 solved!" << std::endl;
}
