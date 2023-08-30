//
//  main.m
//  Challenges
//
//  Created by Nick Pfister on 8/29/23.
//

#import <Foundation/Foundation.h>
#import "NPChallengeSolver.h"
#import "HWSChallenge01_ObjC.h"
#import "HWSChallenge02_ObjC.h"
#import "HWSChallenge17_ObjC.h"
#import <Challenges-Swift.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // HWS Challenge 1
        //NSArray* hwsChallenge01Input = @[@"No duplicates", @"abcdefghijklmnopqrstuvwxyz", @"Hello, world!"];
        //[NPChallengeSolver solveChallenge:[HWSChallenge01_ObjC new] forInput:hwsChallenge01Input];
        //[NPChallengeSolver solveChallenge:[HWSChallenge01a_Swift new] forInput:hwsChallenge01Input];
        //[NPChallengeSolver solveChallenge:[HWSChallenge01b_Swift new] forInput:hwsChallenge01Input];
        
        // HWS Challenge 2
        //NSArray* hwsChallenge02Input = @[@"rotator", @"Rats live on no evil star", @"Never odd or even", @"Hello, world"];
        //[NPChallengeSolver solveChallenge:[HWSChallenge02_ObjC new] forInput:hwsChallenge02Input];
        
        // HWS Challenge 17
        NSArray* hwsChallenge17Input = @[@[@1, @5], @[@8, @10], @[@12, @12], @[@12, @18]];
        [NPChallengeSolver solveChallenge:[HWSChallenge17_ObjC new] forInput:hwsChallenge17Input];
        [NPChallengeSolver solveChallenge:[HWSChallenge17_Swift new] forInput:hwsChallenge17Input];
    }
    return 0;
}
