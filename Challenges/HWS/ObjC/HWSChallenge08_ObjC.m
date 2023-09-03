//
//  HWSChallenge08_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/3/23.
//

#import "HWSChallenge08_ObjC.h"

@implementation HWSChallenge08_ObjC

- (nullable NSArray *)solveForInput:(nullable NSArray *)input { 
    NSMutableArray* output = [NSMutableArray new];
    for(NSArray<NSString *> *strArray in input){
        NSString *str1 = [strArray objectAtIndex:0];
        NSString *str2 = [strArray objectAtIndex:1];
        [output addObject:[NSNumber numberWithBool:[self stringIsRotated:str1 otherString:str2]]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

-(BOOL)stringIsRotated:(NSString*)str1 otherString:(NSString*)str2{
    if([str1 length] != [str2 length]) {
        return NO;
    }
    
    NSMutableString *mstr = [str1 mutableCopy];
    [mstr appendString:str1];
    
    return [mstr containsString:str2];
}

@end
