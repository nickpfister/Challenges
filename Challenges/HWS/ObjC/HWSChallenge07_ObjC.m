//
//  HWSChallenge07_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/2/23.
//

#import "HWSChallenge07_ObjC.h"

@implementation HWSChallenge07_ObjC

- (nullable NSArray *)solveForInput:(nullable NSArray *)input {
    NSMutableArray* output = [NSMutableArray new];
    for(NSString* stringInput in input){
        [output addObject:[self condensingWhitespaceInString:stringInput]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

-(NSString *)condensingWhitespaceInString:(NSString *)str {
    NSError *__autoreleasing error;
    NSRegularExpression *regex = [NSRegularExpression
                                  regularExpressionWithPattern:@"\\s+"
                                  options:0
                                  error:&error];
    
    if(error != nil) {
        NSLog(@"%@", [error localizedDescription]);
        exit(0);
    }
    
    return [regex
            stringByReplacingMatchesInString:str
            options:0
            range:NSMakeRange(0, [str length])
            withTemplate:@" "];
}

@end
