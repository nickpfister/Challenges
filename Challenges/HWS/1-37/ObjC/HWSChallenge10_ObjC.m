//
//  HWSChallenge10_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/4/23.
//

#import "HWSChallenge10_ObjC.h"

@implementation HWSChallenge10_ObjC

- (nullable NSArray *)solveForInput:(nullable NSArray *)input { 
    NSMutableArray* output = [NSMutableArray new];
    for(NSString* str in input){
        [output addObject:[self numVowelsAndConsonantsInString:str]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSArray<NSNumber *> *)numVowelsAndConsonantsInString:(NSString *)str {
    NSUInteger vowelCount = 0;
    NSUInteger consonantCount = 0;
    NSString *lowerCaseStr = [str lowercaseString];
    NSCharacterSet *vowels =
        [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    NSCharacterSet *consonants =
    [NSCharacterSet characterSetWithCharactersInString:@"bcdfghjklmnpqrstvwxyz"];
    
    for(NSUInteger i = 0; i < [lowerCaseStr length]; i++) {
        char chr = [lowerCaseStr characterAtIndex:i];
        if([vowels characterIsMember:chr]) {
            vowelCount++;
        } else if([consonants characterIsMember:chr]) {
            consonantCount++;
        }
    }
    
    return @[[NSNumber numberWithUnsignedInteger:vowelCount],
             [NSNumber numberWithUnsignedInteger:consonantCount]];
}

@end
