//
//  HWSChallenge29_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/17/23.
//

#import "HWSChallenge29_ObjC.h"

@implementation HWSChallenge29_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSMutableArray *output = [NSMutableArray new];
    
    [output addObject:[self documentsDirectory]];
    
    return output;
}

- (NSURL *)documentsDirectory {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
}
@end
