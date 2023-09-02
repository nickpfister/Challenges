//
//  HWSChallenge04_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/2/23.
//

#import "HWSChallenge04_ObjC.h"
#import "NSString+FuzzyContains.h"

@implementation HWSChallenge04_ObjC

- (nullable NSArray *)solveForInput:(nullable NSArray *)input { 
    NSMutableArray *output = [NSMutableArray new];
    for(NSArray<NSString *> *strs in input){
        NSString *str1 = [strs objectAtIndex:0];
        NSString *str2 = [strs objectAtIndex:1];
        [output addObject:[NSNumber numberWithBool:[str1 fuzzyContainsString:str2]]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

@end
