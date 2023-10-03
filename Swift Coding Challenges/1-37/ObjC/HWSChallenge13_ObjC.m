//
//  HWSChallenge13_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/6/23.
//

#import "HWSChallenge13_ObjC.h"

@implementation HWSChallenge13_ObjC
- (nullable NSArray *)solveForInput:(nullable NSArray *)input {
    NSMutableArray* output = [NSMutableArray new];
    for(NSString *str in input){
        [output addObject:[self runLengthEncodingOfString:str]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSString *)runLengthEncodingOfString:(NSString *)str {
    if(str == nil || [str length] == 0) {
        return @"";
    }
    NSMutableString *output = [NSMutableString new];
    
    NSUInteger currentCount = 1;
    char currentChar = [str characterAtIndex:0];
    
    for(NSUInteger i = 1; i < [str length]; i++) {
        char nextChar = [str characterAtIndex:i];
        if(nextChar == currentChar) {
            currentCount++;
        } else {
            [output appendFormat:@"%c%ld", currentChar, currentCount];
            currentChar = nextChar;
            currentCount = 1;
        }
    }
    
    [output appendFormat:@"%c%ld", currentChar, currentCount];
    return output;
}

@end
