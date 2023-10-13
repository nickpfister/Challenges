//
//  Problem4.cpp
//  LeetCode
//
//  Created by Nick Pfister on 10/5/23.
//

#include "Problem4.hpp"
#include <string>
#include <cassert>
#include <iostream>

double findMedianSortedArrays(std::vector<int>& nums1, std::vector<int>& nums2) {
    auto nums1size = nums1.size();
    auto nums2size = nums2.size();
    auto totalSize = nums1size + nums2size;
    unsigned long targetIndex = totalSize / 2;
    bool even = totalSize % 2 == 0;
    int nums1Index = 0;
    int nums2Index = 0;
    double median = 0;
    
    for(auto i = 0; i <= targetIndex; i++) {
        bool nums1Valid = nums1Index < nums1size;
        bool nums2Valid = nums2Index < nums2size;
        
        if (!nums2Valid || (nums1Valid && nums1[nums1Index] < nums2[nums2Index])) {
            if((even && i == targetIndex - 1) || i == targetIndex) {
                median += nums1[nums1Index];
            }
            nums1Index++;
        } else {
            if((even && i == targetIndex - 1) || i == targetIndex) {
                median += nums2[nums2Index];
            }
            nums2Index++;
        }
    }
    
    if(even) {
        median /= 2;
    }
    
    return median;
}

void problem4(){
    std::vector<int> nums1 {2, 3, 4, 6, 7};
    std::vector<int> nums2 {1, 2, 3};
    assert(findMedianSortedArrays(nums1, nums2) == 3);
    std::cout << "Problem 4 solved!" << std::endl;
}
