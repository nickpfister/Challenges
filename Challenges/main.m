//
//  main.m
//  Challenges
//
//  Created by Nick Pfister on 8/29/23.
//

#import <Foundation/Foundation.h>
#import "NPChallengeSolver.h"
#import "HWSChallenge1_ObjC.h"
#import <Challenges-Swift.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [NPChallengeSolver solveChallenge:[HWSChallenge1_ObjC new]];
    }
    return 0;
}
