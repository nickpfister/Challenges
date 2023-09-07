//
//  HWSChallenge19_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/7/23.
//

#import "HWSChallenge19_ObjC.h"

@implementation HWSChallenge19_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSMutableArray* output = [NSMutableArray new];
    for(NSArray<NSNumber*>* intArray in input){
        [output addObject:[self swapTwoNumbers:intArray]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSArray<NSNumber *> *)swapTwoNumbers:(NSArray<NSNumber *> *)nums {
    NSInteger a = [[nums objectAtIndex:0] integerValue];
    NSInteger b = [[nums objectAtIndex:1] integerValue];
    a = a + b;
    b = a - b;
    a = a - b;
    return @[[NSNumber numberWithInteger:a], [NSNumber numberWithInteger:b]];
}
@end
