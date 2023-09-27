//
//  HWSChallenge09_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/3/23.
//

#import "HWSChallenge09_ObjC.h"

@implementation HWSChallenge09_ObjC
- (nullable NSArray *)solveForInput:(nullable NSArray *)input { 
    NSMutableArray* output = [NSMutableArray new];
    for(NSString* str in input){
        [output addObject:[NSNumber numberWithBool:[self stringIsPangram:str]]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (BOOL)stringIsPangram:(NSString *)str{
    NSCharacterSet *strSet = [NSCharacterSet characterSetWithCharactersInString:[str lowercaseString]];
    NSCharacterSet *alphabetSet =
        [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyz"];
    
    return [strSet isSupersetOfSet:alphabetSet];
}
@end
