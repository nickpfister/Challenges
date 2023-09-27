//
//  HWSChallenge23_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/13/23.
//

#import "HWSChallenge23_ObjC.h"

@implementation HWSChallenge23_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSMutableArray *output = [NSMutableArray new];
    for(NSString *str in input){
        BOOL result = [self stringIsInteger:str];
        [output addObject:[NSNumber numberWithBool:result]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (BOOL)stringIsInteger:(NSString *)str {
    NSError *__autoreleasing error;
    NSRegularExpression *regex = [NSRegularExpression
                                  regularExpressionWithPattern:@"\\D"
                                  options:0
                                  error:&error];
    
    return [regex numberOfMatchesInString:str options:0 range:NSMakeRange(0, [str length])] == 0;
}
@end
