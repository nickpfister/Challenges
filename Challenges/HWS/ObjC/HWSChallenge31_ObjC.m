//
//  HWSChallenge31_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/18/23.
//

#import "HWSChallenge31_ObjC.h"

@implementation HWSChallenge31_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSString *copyFrom = [input objectAtIndex:0];
    NSString *copyTo = [input objectAtIndex:1];
    
    return @[[NSNumber numberWithBool:[self copyDirectory:copyFrom toDirectory:copyTo]]];
}

- (BOOL)copyDirectory:(NSString *)copyFrom toDirectory:(NSString *) copyTo {
    BOOL isDirectory;
    if([[NSFileManager defaultManager] fileExistsAtPath:copyFrom isDirectory:&isDirectory] && isDirectory &&
       [[NSFileManager defaultManager] isReadableFileAtPath:copyFrom]) {
        NSError *__autoreleasing error;
        [[NSFileManager defaultManager] copyItemAtPath:copyFrom toPath:copyTo error:&error];
        if(error != nil) {
            NSLog(@"%@", [error localizedDescription]);
            return NO;
        }
        return YES;
    }
    return NO;
}
@end
