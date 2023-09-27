//
//  HWSChallenge37_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/25/23.
//

#import "HWSChallenge37_ObjC.h"
#import "NSArray+CountDigits.h"

@implementation HWSChallenge37_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSMutableArray* output = [NSMutableArray new];
    
    for(NSArray *testCase in input){
        NSNumber *digit = [testCase objectAtIndex:0];
        NSArray<NSNumber *> *numArray = [testCase objectAtIndex:1];
        NSUInteger result = [numArray countDigits:[digit unsignedIntegerValue]];
        [output addObject: [NSNumber numberWithUnsignedInteger:result]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}
@end
