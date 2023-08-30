//
//  NPChallengeSolver.m
//  Challenges
//
//  Created by Nick Pfister on 8/29/23.
//

#import "NPChallengeSolver.h"
#import "NPChallenge.h"

@implementation NPChallengeSolver
+ (void)solveChallenge:(id<NPChallenge>)challenge {
    NSDate *startTime = [NSDate now];
    [challenge solve];
    NSDate *endTime = [NSDate now];
    NSTimeInterval diff = [endTime timeIntervalSinceDate:startTime];

    printf("Challenge solved in %f seconds.\n", diff);
}
@end
