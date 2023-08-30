//
//  HWSChallenge02_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 8/30/23.
//

#import "HWSChallenge02_ObjC.h"

@implementation HWSChallenge02_ObjC
- (NSArray*)solveForInput:(NSArray*)input {
    NSMutableArray* output = [NSMutableArray new];
    for(NSString* stringInput in input){
        [output addObject:[self stringIsPalindrome:stringInput]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSNumber*)stringIsPalindrome:(NSString*)str{
    NSString *lowerCaseStr = [str lowercaseString];
    NSUInteger len = [lowerCaseStr length];
    for(NSUInteger i = 0; i < len/2; i++){
        if([lowerCaseStr characterAtIndex:i] != [lowerCaseStr characterAtIndex:len - i - 1]){
            return @NO;
        }
    }
    return @YES;
}
@end
