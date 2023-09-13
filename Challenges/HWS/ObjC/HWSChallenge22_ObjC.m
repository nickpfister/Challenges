//
//  HWSChallenge22_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/13/23.
//

#import "HWSChallenge22_ObjC.h"

@implementation HWSChallenge22_ObjC
- (nullable NSArray *)solveForInput:(nullable NSArray *)input {
    NSMutableArray *output = [NSMutableArray new];
    for(NSNumber *num in input){
        uint8_t intVal = [num intValue];
        uint8_t reverse = [self binaryReverseOfInteger:intVal];
        [output addObject:[NSNumber numberWithInt:reverse]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (uint8_t)binaryReverseOfInteger:(uint8_t)intVal {
    uint8_t rev = 0;

    for(int i = 0; i < 8; i++){
        rev = rev<<1;
        rev ^= intVal & 1;
        intVal = intVal>>1;
    }
    
    return rev;
}
@end
