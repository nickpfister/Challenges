//
//  HWSChallenge28_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/17/23.
//

#import "HWSChallenge28_ObjC.h"

@implementation HWSChallenge28_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSString *path = [input objectAtIndex:0];
    
    for(NSUInteger i = 1; i < [input count]; i++){
        [self logToFileAtPath:path message:[input objectAtIndex:i]];
    }
    
    return nil;
}

- (void)logToFileAtPath:(NSString *)path message:(NSString *) str {
    NSDate *date = [NSDate now];
    NSString *dateString = [NSDateFormatter
                            localizedStringFromDate:date
                            dateStyle:NSDateFormatterShortStyle
                            timeStyle:NSDateFormatterMediumStyle];
    
    NSData *strData = [[dateString
                        stringByAppendingFormat:@": %@\n", str]
                        dataUsingEncoding:NSUTF8StringEncoding];
    
    if(![[NSFileManager defaultManager] fileExistsAtPath:path]) {
        [[NSFileManager defaultManager]
         createFileAtPath:path
         contents:strData
         attributes:nil];
    } else {
        NSFileHandle *handle = [NSFileHandle fileHandleForWritingAtPath:path];
        [handle seekToEndOfFile];
        [handle writeData:strData];
    }
}
@end
