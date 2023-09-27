//
//  HWSChallenge18_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/7/23.
//

#import "HWSChallenge18_ObjC.h"

@implementation HWSChallenge18_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSMutableArray* output = [NSMutableArray new];
    for(NSArray<NSNumber*>* nums in input){
        NSUInteger base = [[nums objectAtIndex:0] unsignedIntegerValue];
        NSUInteger exp = [[nums objectAtIndex:1] unsignedIntegerValue];
        NSInteger result = [self powOfBaseInteger:base toExponent:exp];
        [output addObject: [NSNumber numberWithUnsignedInteger:result]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSUInteger)powOfBaseInteger:(NSUInteger)base toExponent:(NSUInteger)exp {
    NSUInteger result = 1;
    for(NSUInteger i = 0; i < exp; i++){
        result *= base;
    }
    
    return result;
}
@end
