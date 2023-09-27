//
//  HWSChallenge14_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/6/23.
//

#import "HWSChallenge14_ObjC.h"

@implementation HWSChallenge14_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSMutableArray* output = [NSMutableArray new];
    for(NSString *str in input){
        NSSet<NSString *> *permutations = [self permutationsOfString:str];
        [output addObject:permutations];
        [output addObject:[NSString stringWithFormat:@"Total permutations: %ld", [permutations count]]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSSet<NSString *> *)permutationsOfString:(NSString *)str {
    if([str length] == 1) {
        return [NSSet setWithArray:@[str]];
    }
    NSMutableSet<NSString *> *output = [NSMutableSet new];
    
    for(NSUInteger i = 0; i < [str length]; i++){
        NSString *perm = [NSMutableString stringWithFormat:@"%c", [str characterAtIndex:i]];
        NSMutableString *remainingStr = [str mutableCopy];
        NSRange removeRange = NSMakeRange(i, 1);
        [remainingStr deleteCharactersInRange:removeRange];
    
        NSSet<NSString *> *subPerms = [self permutationsOfString:remainingStr];
        
        for(NSString *subPerm in subPerms) {
            [output addObject:[perm stringByAppendingString:subPerm]];
        }
    }
    return [NSSet setWithSet:output];
}
@end
