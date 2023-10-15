//
//  Problem104.cpp
//  LeetCode
//
//  Created by Nick Pfister on 10/15/23.
//

#include "Problem104.hpp"
#include <string>
#include <cassert>
#include <iostream>

using namespace std;

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};


int maxDepth(TreeNode* root) {
    if(root->left == nullptr && root->right == nullptr) {
        return 1;
    }
    
    int leftMax = 0;
    int rightMax = 0;
    
    if(root->left != nullptr) {
        leftMax = maxDepth(root->left);
    }
    
    if(root->right != nullptr) {
        rightMax = maxDepth(root->right);
    }
    
    return max(leftMax, rightMax) + 1;
}

void problem104() {
    TreeNode *root = new TreeNode(3);
    root->left = new TreeNode(9);
    root->right = new TreeNode(20);
    root->right->left = new TreeNode(15);
    root->right->right = new TreeNode(7);
    assert(maxDepth(root)==3);
    
    cout << "Problem 104 solved!" << endl;
}
