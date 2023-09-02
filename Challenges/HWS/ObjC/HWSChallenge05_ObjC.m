//
//  HWSChallenge05_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/2/23.
//

#import "HWSChallenge05_ObjC.h"

@implementation HWSChallenge05_ObjC

- (nullable NSArray *)solveForInput:(nullable NSArray *)input { 
    NSMutableArray *output = [NSMutableArray new];
    for(NSArray *strs in input){
        char chr = [[strs objectAtIndex:0] characterAtIndex:0];
        NSString *str = [strs objectAtIndex:1];
        [output addObject:[NSNumber numberWithUnsignedInteger:[self countOccurancesOfCharacter:chr inString:str]]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSUInteger)countOccurancesOfCharacter:(char)chr inString: (NSString *)str {
    NSUInteger count = 0;
    for(NSUInteger i = 0; i < [str length]; i++) {
        if([str characterAtIndex:i] == chr) {
            count++;
        }
    }
    
    return count;
}

@end
