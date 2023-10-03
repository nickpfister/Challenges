//
//  HWSChallenge12_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/5/23.
//

#import "HWSChallenge12_ObjC.h"

@implementation HWSChallenge12_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSMutableArray* output = [NSMutableArray new];
    for(NSString *str in input){
        [output addObject:[self longestPrefixOfString:str]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSString *)longestPrefixOfString:(NSString *)str {
    NSString *longestPrefix = @"";
    NSArray<NSString *> *words = [str componentsSeparatedByString:@" "];
    NSString *principleStr = [words objectAtIndex:0];
    
    for(NSUInteger i = 0; i < [principleStr length]; i++) {
        NSString *testPrefix = [longestPrefix stringByAppendingFormat:@"%c", [principleStr characterAtIndex:i]];
        for(NSString *testStr in words) {
            if(![testStr hasPrefix:testPrefix]){
                return longestPrefix;
            }
        }
        longestPrefix = testPrefix;
    }
    
    return longestPrefix;
}
@end
