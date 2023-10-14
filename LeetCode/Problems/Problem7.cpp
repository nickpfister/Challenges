//
//  Problem7.cpp
//  LeetCode
//
//  Created by Nick Pfister on 10/14/23.
//

#include "Problem7.hpp"
#include <string>
#include <cassert>
#include <iostream>
#include <cmath>

using namespace std;

int reverse(int x) {
    int reversed = 0;
    int maxValDivBy10 = INT32_MAX / 10;
    int minValDivBy10 = INT32_MIN / 10;
    
    while(x != 0) {
        
        if(reversed > maxValDivBy10) {
            return 0;
        } else if (reversed < minValDivBy10) {
            return 0;
        }
        
        reversed *= 10;
        reversed += x % 10;
        x /= 10;
    }
    
    return reversed;
}

void problem7() {
    assert(reverse(-10) == -1);
    assert(reverse(123) == 321);
    assert(reverse(INT32_MAX) == 0);
    assert(reverse(INT32_MIN) == 0);
    cout<<"Problem 7 solved!"<<endl;
}
