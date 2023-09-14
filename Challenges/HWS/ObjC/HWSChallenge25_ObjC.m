//
//  HWSChallenge25_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/14/23.
//

#import "HWSChallenge25_ObjC.h"

@implementation HWSChallenge25_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSMutableArray *output = [NSMutableArray new];
    for(NSNumber *num in input){
        NSUInteger squareRoot = [self squareRootOfInteger:[num unsignedIntegerValue]];
        [output addObject:[NSNumber numberWithUnsignedInteger:squareRoot]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSUInteger)squareRootOfInteger:(NSUInteger)intVal {
    NSUInteger low = 1;
    NSUInteger high = intVal / 2;
    NSUInteger midPoint = (high + low) / 2;
    NSUInteger sqr = midPoint * midPoint;
    while(midPoint != low && sqr != intVal) {
        if(sqr < intVal) {
            low = midPoint;
        } else {
            high = midPoint;
        }
        
        midPoint = (high + low) / 2;
        sqr = midPoint * midPoint;
    }
    
    return midPoint;
}
@end
