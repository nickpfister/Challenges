//
//  HWSChallenge24_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/13/23.
//

#import "HWSChallenge24_ObjC.h"

@implementation HWSChallenge24_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSMutableArray *output = [NSMutableArray new];
    for(NSString *str in input){
        NSUInteger result = [self addNumbersInString:str];
        [output addObject:[NSNumber numberWithUnsignedInteger:result]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSUInteger)addNumbersInString:(NSString *)str {
    NSError *__autoreleasing error;
    NSRegularExpression *regex = [NSRegularExpression
                                  regularExpressionWithPattern:@"\\d+"
                                  options:0
                                  error:&error];
    
    NSArray<NSTextCheckingResult *> *matches = [regex
                                                 matchesInString:str
                                                 options:0
                                                 range:NSMakeRange(0, [str length])];
    NSUInteger intVal = 0;
    for(NSTextCheckingResult *match in matches) {
        NSString *subStr = [str substringWithRange:[match range]];
        intVal += [subStr integerValue];
    }
    
    return intVal;
}
@end
