//
//  NPChallengeSolver.m
//  Challenges
//
//  Created by Nick Pfister on 8/29/23.
//

#import "NPChallengeSolver.h"
#import "NPChallenge.h"

@implementation NPChallengeSolver
+ (void)solveChallenge:(id<NPChallenge>)challenge forInput:(NSArray*)input {
    NSDate *startTime = [NSDate now];
    NSArray *output = [challenge solveForInput:input];
    NSDate *endTime = [NSDate now];
    NSTimeInterval diff = [endTime timeIntervalSinceDate:startTime];
    NSString *inputString = [input componentsJoinedByString:@"\n "];
    NSString *outputString = [output componentsJoinedByString:@"\n "];
    printf("Input:\n %s\n\nOutput:\n %s\n\n",
           [inputString cStringUsingEncoding:NSUTF8StringEncoding],
           [outputString cStringUsingEncoding:NSUTF8StringEncoding]);
    printf("Challenge solved in %f seconds.\n", diff);
}
@end
