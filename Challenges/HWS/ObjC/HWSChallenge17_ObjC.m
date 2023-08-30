//
//  HWSChallenge17_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 8/30/23.
//

#import "HWSChallenge17_ObjC.h"

@implementation HWSChallenge17_ObjC
- (nullable NSArray *)solveForInput:(nullable NSArray *)input {
    NSMutableArray* output = [NSMutableArray new];
    for(NSArray<NSNumber*>* range in input){
        [output addObject:[self randomNumberInRange:range]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSNumber*)randomNumberInRange:(NSArray<NSNumber*>*)range {
    NSInteger diff = [[range objectAtIndex:1] integerValue] - [[range objectAtIndex:0] integerValue];
    NSInteger randomInteger = [[range objectAtIndex:0] integerValue] + arc4random_uniform((uint32_t) diff);
    return [[NSNumber alloc] initWithInteger:randomInteger];
}
@end
