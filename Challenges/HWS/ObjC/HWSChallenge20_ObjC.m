//
//  HWSChallenge20_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/9/23.
//

#import "HWSChallenge20_ObjC.h"

@implementation HWSChallenge20_ObjC
- (nullable NSArray *)solveForInput:(nullable NSArray *)input {
    NSMutableArray *output = [NSMutableArray new];
    for(NSNumber *num in input){
        BOOL result = [self isPrimeNumber:[num integerValue]];
        [output addObject:[NSNumber numberWithBool:result]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (BOOL)isPrimeNumber:(NSUInteger)intVal{
    if(intVal <= 1) return NO;
    if(intVal == 2 || intVal == 3) return YES;
    if(intVal % 2 == 0 || intVal % 3 == 0) return NO;
    
    for(int i = 5; i * i <= intVal; i += 6) {
        if (intVal % i == 0) return NO;
        if (intVal % (i + 2) == 0) return NO;
    }
    
    return YES;
}
@end
