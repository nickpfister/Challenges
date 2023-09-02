//
//  main.m
//  Challenges
//
//  Created by Nick Pfister on 8/29/23.
//

#import <Foundation/Foundation.h>
#import "NPChallengeSolver.h"
#import "HWSChallenges.h"
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
        
        // HWS Challenge 3
        //NSArray* hwsChallenge03Input = @[@[@"abca", @"abca"], @[@"abc", @"cba"], @[@" a1 b2 ", @" b1 a2 "],
        //                                 @[@"abc", @"abca"], @[@"abc", @"Abc"], @[@"abc", @"cbAa"], @[@"abcc", @"abca"]];
        //[NPChallengeSolver solveChallenge:[HWSChallenge03_ObjC new] forInput:hwsChallenge03Input];
        //[NPChallengeSolver solveChallenge:[HWSChallenge03_Swift new] forInput:hwsChallenge03Input];
        
        // HWS Challenge 4
        //NSArray *hwsChallenge04Input = @[@[@"Hello, world", @"Hello"], @[@"Hello, world", @"WORLD"], @[@"Hello, world", @"Goodble"]];
        //[NPChallengeSolver solveChallenge:[HWSChallenge04_ObjC new] forInput:hwsChallenge04Input];
        //[NPChallengeSolver solveChallenge:[HWSChallenge04_Swift new] forInput:hwsChallenge04Input];
        
        // HWS Challenge 5
        //NSArray *hwsChallenge05Input = @[@[@"a", @"The rain in Spain"],
        //                                 @[@"i", @"Mississippi"],
        //                                 @[@"i", @"Hacking with Swift"]];
        //[NPChallengeSolver solveChallenge:[HWSChallenge05_ObjC new] forInput:hwsChallenge05Input];
        //[NPChallengeSolver solveChallenge:[HWSChallenge05_Swift new] forInput:hwsChallenge05Input];
        
        // HWS Challenge 6
        //NSArray *hwsChallenge06Input = @[@"Wombat", @"Hello", @"Mississippi"];
        //[NPChallengeSolver solveChallenge:[HWSChallenge06_ObjC new] forInput:hwsChallenge06Input];
        //[NPChallengeSolver solveChallenge:[HWSChallenge06_Swift new] forInput:hwsChallenge06Input];
        
        // HWS Challenge 7
        NSArray *hwsChallenge07Input = @[@"a   b   c", @"    a", @"abc"];
        //[NPChallengeSolver solveChallenge:[HWSChallenge07_ObjC new] forInput:hwsChallenge07Input];
        [NPChallengeSolver solveChallenge:[HWSChallenge07_Swift new] forInput:hwsChallenge07Input];
        
        // HWS Challenge 17
        //NSArray* hwsChallenge17Input = @[@[@1, @5], @[@8, @10], @[@12, @12], @[@12, @18]];
        //[NPChallengeSolver solveChallenge:[HWSChallenge17_ObjC new] forInput:hwsChallenge17Input];
        //[NPChallengeSolver solveChallenge:[HWSChallenge17_Swift new] forInput:hwsChallenge17Input];
        
    }
    return 0;
}
