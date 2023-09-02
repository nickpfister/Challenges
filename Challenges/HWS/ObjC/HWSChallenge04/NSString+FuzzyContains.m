//
//  NSString+FuzzyContains.m
//  Challenges
//
//  Created by Nick Pfister on 9/2/23.
//

#import "NSString+FuzzyContains.h"

@implementation NSString (FuzzyContains)
- (BOOL)fuzzyContainsString:(NSString *)str {
    NSRange range = [self rangeOfString:str options:NSCaseInsensitiveSearch];
    return range.location != NSNotFound;
}
@end
