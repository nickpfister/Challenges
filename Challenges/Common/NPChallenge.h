//
//  NPChallenge.h
//  Challenges
//
//  Created by Nick Pfister on 8/29/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol NPChallenge <NSObject>
- (NSArray*)solveForInput:(NSArray*)input;
@end

NS_ASSUME_NONNULL_END
