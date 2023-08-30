//
//  HWSChallenge1_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 8/30/23.
//

#import "HWSChallenge1_ObjC.h"

@implementation HWSChallenge1_ObjC
- (NSArray*)solveForInput:(NSArray *)input {
    NSMutableArray* output = [NSMutableArray new];
    for(NSString* stringInput in input){
        [output addObject:[self foundDuplicateCharactersInString:stringInput]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

- (NSNumber*)foundDuplicateCharactersInString:(NSString*)str {
    NSMutableSet* set = [NSMutableSet new];
    for(NSUInteger i = 0; i < [str length]; i++){
        NSString* subString = [[NSString alloc] initWithFormat:@"%c",[str characterAtIndex:i]];
        [set addObject:subString];
    }
    
    return [[NSNumber alloc] initWithBool:[str length] != [set count]];
}
@end
