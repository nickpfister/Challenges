//
//  HWSChallenge15_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/6/23.
//

#import "HWSChallenge15_ObjC.h"

@implementation HWSChallenge15_ObjC

- (nullable NSArray *)solveForInput:(nullable NSArray *)input { 
    NSMutableArray* output = [NSMutableArray new];
    for(NSString *str in input){
        [output addObject:[self reverseWordsInString:str]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

-(NSString *)reverseWordsInString:(NSString *)str {
    // Is this possible to do without loops in ObjC?
    NSError *__autoreleasing error;
    NSRegularExpression *regex = [NSRegularExpression
                                  regularExpressionWithPattern:@"\\b\\w+"
                                  options:0
                                  error:&error];
    
    NSArray<NSTextCheckingResult *> *matches = [regex matchesInString:str options:0 range:NSMakeRange(0, [str length])];
    
    NSMutableString *output = [NSMutableString new];
    
    for(NSTextCheckingResult *match in matches) {
        NSString *word = [str substringWithRange:[match range]];
        for(NSInteger i = [word length] - 1; i >= 0; i--) {
            [output appendFormat:@"%c", [word characterAtIndex:i]];
        }
        
        [output appendString:@" "];
    }
    
    return output;
}
@end
