//
//  NSString+FuzzyContains.h
//  Challenges
//
//  Created by Nick Pfister on 9/2/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (FuzzyContains)
- (BOOL)fuzzyContainsString:(NSString *)str;
@end

NS_ASSUME_NONNULL_END
