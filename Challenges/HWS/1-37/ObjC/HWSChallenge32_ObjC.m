//
//  HWSChallenge32_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/18/23.
//

#import "HWSChallenge32_ObjC.h"

@implementation HWSChallenge32_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSMutableArray *output = [NSMutableArray new];
    for(NSArray<NSString *> *strArray in input){
        NSString *path = [strArray objectAtIndex:0];
        NSString *str = [strArray objectAtIndex:1];
        NSUInteger result = [self wordFrequencyInFileAtPath:path word:str];
        [output addObject:[NSNumber numberWithUnsignedInteger:result]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSUInteger)wordFrequencyInFileAtPath:(NSString *)path word:(NSString *)str {
    NSError *__autoreleasing loadError;
    NSString *contents = [NSString
                          stringWithContentsOfFile:path
                          encoding:NSUTF8StringEncoding error:&loadError];
    
    NSString *regexStr = @"\\b[\\w|']+";
    
    NSError *__autoreleasing regexError;
    NSRegularExpression *regex = [NSRegularExpression
                                  regularExpressionWithPattern:regexStr
                                  options:0
                                  error:&regexError];
    NSArray<NSTextCheckingResult *> *results = [regex
                                                matchesInString:contents
                                                options:0
                                                range:NSMakeRange(0, [contents length])];
    
    NSUInteger count = 0;
    for(NSTextCheckingResult *result in results) {
        NSString *match = [contents substringWithRange:[result range]];
        if([match isEqualToString:str]) {
            count++;
        }
    }
    
    return count;
    
}
@end
