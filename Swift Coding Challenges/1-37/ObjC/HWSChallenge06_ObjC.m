//
//  HWSChallenge06_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/2/23.
//

#import "HWSChallenge06_ObjC.h"

@implementation HWSChallenge06_ObjC

- (nullable NSArray *)solveForInput:(nullable NSArray *)input {
    NSMutableArray* output = [NSMutableArray new];
    for(NSString* str in input){
        [output addObject:[self removingDuplicateCharactersInString:str]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSString *)removingDuplicateCharactersInString:(NSString *)str {
    NSMutableOrderedSet *set = [NSMutableOrderedSet new];
    
    for(NSUInteger i = 0; i < [str length]; i++) {
        [set addObject:[NSNumber numberWithChar:[str characterAtIndex:i]]];
    }
    
    NSMutableString* mstr = [NSMutableString new];
    
    for(NSNumber *num in set) {
        [mstr appendString:[NSString stringWithFormat:@"%c", [num charValue]]];
    }
    
    return [NSString stringWithString:mstr];
}

@end
