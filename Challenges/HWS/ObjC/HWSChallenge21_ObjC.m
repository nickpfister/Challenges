//
//  HWSChallenge21_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/9/23.
//

#import "HWSChallenge21_ObjC.h"

@implementation HWSChallenge21_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSMutableArray *output = [NSMutableArray new];
    for(NSNumber *num in input){
        [output addObject:[self closestNumbersWithEqualBinaryOnes:[num intValue]]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSArray<NSNumber *> *)closestNumbersWithEqualBinaryOnes:(NSUInteger)intVal {
    NSUInteger ones = [self binaryOnesOfInteger:intVal];
    NSMutableArray *result = [NSMutableArray new];
    
    // It is impossible to have the same number of ones as the max or min values
    if(intVal == 0 || intVal == NSUIntegerMax) {
        return result;
    }
    
    for(NSUInteger i = intVal - 1; i > 0; i--){
        if([self binaryOnesOfInteger:i] == ones) {
            [result addObject:[NSNumber numberWithUnsignedInteger:i]];
            break;
        }
    }
    
    for(NSUInteger i = intVal + 1; i < NSUIntegerMax; i++){
        if([self binaryOnesOfInteger:i] == ones) {
            [result addObject:[NSNumber numberWithUnsignedInteger:i]];
            break;
        }
    }
    
    return result;
}

- (NSUInteger)binaryOnesOfInteger:(NSUInteger)intVal {
    NSUInteger ones = 0;
    do {
        if(intVal % 2 == 1) {
            ones++;
        }
        
        intVal /= 2;
    } while (intVal > 0);
    
    return ones;
}

- (NSString *)binaryStringOfInteger:(NSUInteger)intVal {
    NSMutableString *binaryString = [NSMutableString new];
    do {
        if(intVal % 2 == 1) {
            [binaryString insertString:@"1" atIndex:0];
        } else {
            [binaryString insertString:@"0" atIndex:0];
        }
        
        intVal /= 2;
    } while (intVal > 0);
    
    return binaryString;
}
@end
