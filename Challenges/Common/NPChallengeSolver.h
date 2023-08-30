//
//  NPChallengeSolver.h
//  Challenges
//
//  Created by Nick Pfister on 8/29/23.
//

#import <Foundation/Foundation.h>
#import "NPChallenge.h"

NS_ASSUME_NONNULL_BEGIN

@interface NPChallengeSolver : NSObject
+ (void)solveChallenge:(id<NPChallenge>)challenge forInput:(nullable NSArray*)input;
@end

NS_ASSUME_NONNULL_END
