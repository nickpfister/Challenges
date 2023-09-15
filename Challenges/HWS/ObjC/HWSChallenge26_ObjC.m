//
//  HWSChallenge26_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/15/23.
//

#import "HWSChallenge26_ObjC.h"

@implementation HWSChallenge26_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSMutableArray *output = [NSMutableArray new];
    for(NSArray<NSNumber *> *numArray in input){
        NSInteger a = [[numArray objectAtIndex:0] integerValue];
        NSInteger b = [[numArray objectAtIndex:1] integerValue];
        NSInteger result = [self subtract:a fromInteger:b];
        [output addObject:[NSNumber numberWithInteger:result]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSInteger)subtract:(NSInteger)a fromInteger:(NSInteger)b {
    return ~a + b + 1;
}
@end
