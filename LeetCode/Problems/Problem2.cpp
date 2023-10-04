//
//  Problem2.cpp
//  LeetCode
//
//  Created by Nick Pfister on 10/4/23.
//

#include "Problem2.hpp"
#include <iostream>
#include <cassert>

struct ListNode {
    int val;
    ListNode *next;
    ListNode() : val(0), next(nullptr) {}
    ListNode(int x) : val(x), next(nullptr) {}
    ListNode(int x, ListNode *next) : val(x), next(next) {}
};

ListNode* addTwoNumbers(ListNode* l1, ListNode* l2) {
    ListNode* result = nullptr;
    ListNode* node = nullptr;
    int remainder = 0;
    
    while (l1 != nullptr || l2 != nullptr || remainder != 0) {
        int sum = remainder;
        remainder = 0;
        if (l1 != nullptr) {
            sum += l1->val;
            l1 = l1->next;
        }
        if (l2 != nullptr) {
            sum += l2->val;
            l2 = l2->next;
        }
        
        if (sum >= 10) {
            remainder = 1;
            sum -= 10;
        }
        
        if (result == nullptr) {
            result = new ListNode(sum);
            node = result;
        } else {
            node->next = new ListNode(sum);
            node = node->next;
        }
    }
    
    return result;
}

void problem2() {
    auto l1 = new ListNode(2);
    l1->next = new ListNode(4);
    l1->next->next = new ListNode(3);
    
    auto l2 = new ListNode(5);
    l2->next = new ListNode(6);
    l2->next->next = new ListNode(4);
    
    auto result = addTwoNumbers(l1, l2);
    assert(result->val == 7);
    assert(result->next->val == 0);
    assert(result->next->next->val == 8);
    assert(result->next->next->next == nullptr);
    
    std::cout<<"Problem 2 solved!"<<std::endl;
}
