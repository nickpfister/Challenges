//
//  HWSChallenge2_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 8/30/23.
//

#import "HWSChallenge2_ObjC.h"

@implementation HWSChallenge2_ObjC
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
