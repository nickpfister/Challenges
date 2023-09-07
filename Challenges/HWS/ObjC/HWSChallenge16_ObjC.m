//
//  HWSChallenge16_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/7/23.
//

#import "HWSChallenge16_ObjC.h"

@implementation HWSChallenge16_ObjC

- (nullable NSArray *)solveForInput:(nullable NSArray *)input { 
    NSMutableArray* output = [NSMutableArray new];
    for(NSNumber* num in input){
        [output addObject:[self fizzBuzz:[num unsignedIntegerValue]]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

-(NSString *)fizzBuzz:(NSUInteger)intVal {
    BOOL divisibleBy3 = intVal % 3 == 0;
    BOOL divisibleBy5 = intVal % 5 == 0;
    
    if(divisibleBy3) {
        if(divisibleBy5) {
            return @"Fizz Buzz";
        }
        return @"Fizz";
    } else if(divisibleBy5) {
        return @"Buzz";
    }
    
    return [NSString stringWithFormat:@"%ld", intVal];
}

@end
