//
//  Problem88.cpp
//  LeetCode
//
//  Created by Nick Pfister on 10/15/23.
//

#include "Problem88.hpp"
#include <string>
#include <cassert>
#include <iostream>

using namespace std;

void merge(vector<int>& nums1, int m, vector<int>& nums2, int n) {
    int im = m - 1;
    int in = n - 1;
    
    while (in >= 0 || im >= 0) {
        if(in >= 0 && im >= 0) {
            if(nums1[im] > nums2[in]) {
                nums1[im + in + 1] = nums1[im];
                im--;
            } else {
                nums1[im + in + 1] = nums2[in];
                in--;
            }
        } else if (in >= 0) {
            nums1[im + in + 1] = nums2[in];
            in--;
        } else {
            nums1[im + in + 1] = nums1[im];
            im--;
        }
    }
}

void problem88(){
    vector<int> nums1A {1,2,3,0,0,0};
    vector<int> nums2A {2,5,6};
    vector<int> solA {1,2,2,3,5,6};
    merge(nums1A, 3, nums2A, 3);
    
    assert(nums1A == solA);
    cout<<"Problem 88 solved!"<<endl;
}
