//
//  HWSChallenge11_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/4/23.
//

#import "HWSChallenge11_ObjC.h"

@implementation HWSChallenge11_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSMutableArray* output = [NSMutableArray new];
    for(NSArray<NSString *> *strArray in input){
        NSString *str1 = [strArray objectAtIndex:0];
        NSString *str2 = [strArray objectAtIndex:1];
        [output addObject:[NSNumber numberWithBool:[self stringMatchesAllBut3Letters:str1 withString:str2]]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (BOOL)stringMatchesAllBut3Letters:(NSString *)str1 withString:(NSString *) str2 {
    if([str1 length] != [str2 length]) {
        return NO;
    }
    
    NSUInteger nonMatches = 0;
    for(NSUInteger i = 0; i < [str1 length]; i++){
        if([str1 characterAtIndex:i] != [str2 characterAtIndex:i]){
            nonMatches++;
            if(nonMatches > 3){
                return NO;
            }
        }
    }
    
    return YES;
}
@end
