//
//  NSArray+CountDigits.m
//  Challenges
//
//  Created by Nick Pfister on 9/27/23.
//

#import "NSArray+CountDigits.h"

@implementation NSArray (CountDigits)
- (NSUInteger)countDigits:(NSUInteger)uintVal {
    NSString *uintStr = [NSString stringWithFormat:@"%ld", uintVal];
    char uintChar = [uintStr characterAtIndex:0];
    NSUInteger count = 0;
    for(NSNumber *num in self) {
        NSString *numStr = [NSString stringWithFormat:@"%ld", [num unsignedIntegerValue]];
        for(NSUInteger i = 0; i < [numStr length]; i++)
        {
            if([numStr characterAtIndex:i] == uintChar) {
                count++;
            }
        }
    }
    
    return count;
}
@end
