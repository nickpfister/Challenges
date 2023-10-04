//
//  Problem1.cpp
//  LeetCode
//
//  Created by Nick Pfister on 10/3/23.
//

#include "Problem1.hpp"
#include <iostream>

std::vector<int> twoSums(std::vector<int>& nums, int target) {
    std::unordered_map<int, int> map {};
    auto size = nums.size();
    
    for (auto i = 0; i < size; ++i) {
        map[nums[i]] = i;
    }
    
    for (auto i = 0; i < size; ++i) {
        int key = nums[i];
        int complement = target - key;
        
        if(map.contains(complement)) {
            return std::vector<int> {i, map[complement]};
        }
    }
    
    return std::vector<int> {};
}

void problem1() {
    auto nums = std::vector<int> { 2, 7, 11, 15 };
    int target = 9;
    auto expectedResult = std::vector<int> { 0, 1 };
    auto result = twoSums(nums, target);

    std::cout << (twoSums(nums, target) == expectedResult);
}
