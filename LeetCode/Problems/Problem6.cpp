//
//  Problem6.cpp
//  LeetCode
//
//  Created by Nick Pfister on 10/14/23.
//

#include "Problem6.hpp"
#include <string>
#include <cassert>
#include <iostream>

using namespace std;

string convert(string s, int numRows){
    const auto diagLen = numRows - 2 > 0 ? numRows - 2 : 0;
    const auto period = numRows + diagLen;
    const auto sLen = s.length();
    string result = "";
    
    for(auto i = 0; i < numRows; i++) {
        auto columnIndex = i;
        int diagIndex = 0;
        bool useDiag = i != 0 && i != numRows - 1;
        if(useDiag) {
            diagIndex = columnIndex + (numRows - 1 - i) + (diagLen - i + 1);
        }
        
        while(columnIndex < sLen) {
            result += s[columnIndex];
            if(useDiag && diagIndex < sLen){
                result += s[diagIndex];
            }
            columnIndex += period;
            diagIndex += period;
        }
    }
    
    return result;
}

void problem6() {
    assert(convert("PAYPALISHIRING", 3) == "PAHNAPLSIIGYIR");
    assert(convert("PAYPALISHIRING", 4) == "PINALSIGYAHRPI");
    cout<<"Problem 6 solved!"<<endl;
}
