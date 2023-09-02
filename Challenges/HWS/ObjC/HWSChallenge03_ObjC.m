//
//  HWSChallenge03_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/1/23.
//

#import "HWSChallenge03_ObjC.h"

@implementation HWSChallenge03_ObjC

- (nullable NSArray *)solveForInput:(nullable NSArray *)input { 
    NSMutableArray *output = [NSMutableArray new];
    for(NSArray<NSString *> *strs in input){
        [output addObject:[self stringsContainSameCharacters:strs]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSNumber *)stringsContainSameCharacters:(NSArray<NSString *> *)strs {
    NSString *str1 = [strs objectAtIndex:0];
    NSString *str2 = [strs objectAtIndex:1];
    
    if([str1 length] != [str2 length]) {
        return @NO;
    }
    
    NSMutableArray<NSNumber *> *str1Array = [NSMutableArray new];
    NSMutableArray<NSNumber *> *str2Array = [NSMutableArray new];
    
    for(NSUInteger i = 0; i < [str1 length]; i++) {
        [str1Array addObject:[NSNumber numberWithChar:[str1 characterAtIndex:i]]];
        [str2Array addObject:[NSNumber numberWithChar:[str2 characterAtIndex:i]]];
    }
    
    [str1Array sortUsingSelector:@selector(compare:)];
    [str2Array sortUsingSelector:@selector(compare:)];
    
    for(NSUInteger i = 0; i< [str1Array count]; i++) {
        if([str1Array objectAtIndex:i] != [str2Array objectAtIndex:i]) {
            return @NO;
        }
    }
    
    return @YES;
}

@end
