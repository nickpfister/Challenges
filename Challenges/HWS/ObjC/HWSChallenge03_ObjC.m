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
    for(NSArray<NSString *> *strArray in input){
        NSString *str1 = [strArray objectAtIndex:0];
        NSString *str2 = [strArray objectAtIndex:1];
        [output addObject:[self stringsContainSameCharacters:str1 otherString:str2]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSNumber *)stringsContainSameCharacters:(NSString *)str1 otherString:(NSString *)str2 {
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
