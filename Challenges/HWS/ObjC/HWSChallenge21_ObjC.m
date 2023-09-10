//
//  HWSChallenge21_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/9/23.
//

#import "HWSChallenge21_ObjC.h"

@implementation HWSChallenge21_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSMutableArray *output = [NSMutableArray new];
    for(NSNumber *num in input){
        [output addObject:[self binaryStringOfInteger:[num intValue]]];
    }
    
    return [[NSArray alloc] initWithArray:output];
}

//- (NSArray<NSNumber *> *)closestBinaryOnesOfInteger:(NSUInteger)intVal {
//    [NSString stringWithFormat:@""];
//        
//}

- (NSString *)binaryStringOfInteger:(NSUInteger)intVal {
    NSMutableString *binaryString = [NSMutableString new];
    do {
        if(intVal % 2 == 1) {
            [binaryString insertString:@"1" atIndex:0];
        } else {
            [binaryString insertString:@"0" atIndex:0];
        }
        
        intVal /= 2;
    } while (intVal > 0);
    
    return binaryString;
}
@end
