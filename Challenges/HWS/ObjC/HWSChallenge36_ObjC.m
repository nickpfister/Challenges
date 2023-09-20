//
//  HWSChallenge36_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/20/23.
//

#import "HWSChallenge36_ObjC.h"

@implementation HWSChallenge36_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSString *fileName = [input objectAtIndex:0];
    NSUInteger result = [self countErrorLinesInFile:fileName];
    return @[[NSNumber numberWithUnsignedInteger:result]];
}

- (NSUInteger)countErrorLinesInFile:(NSString *)filePath {
    NSString *errorPrefix = @"[ERROR]";
    NSFileHandle *handle = [NSFileHandle fileHandleForReadingAtPath:filePath];
    unsigned long long eof = [handle seekToEndOfFile];
    [handle seekToFileOffset:0];
    NSString *remainder = @"";
    NSUInteger count = 0;
    while([handle offsetInFile] < eof) {
        @autoreleasepool {
            NSData *chunk = [handle readDataUpToLength:1000 error:nil];
            NSString *content = [[NSString alloc] initWithData:chunk encoding:NSUTF8StringEncoding];
            content = [remainder stringByAppendingString:content];
            NSMutableArray<NSString *> *lines = [[content componentsSeparatedByString:@"\n"] mutableCopy];
            remainder = [lines lastObject];
            [lines removeLastObject];
            for(NSString *line in lines) {
                if([line hasPrefix:errorPrefix]) {
                    count++;
                }
            }
        }
    }
    
    return count;
}

- (void)generateHugeFileAtPath:(NSString *)filePath {
    NSUInteger lines = 100000000;
    NSRange range = NSMakeRange(0, lines);
    NSString *normalLine = @"Nothing to see here.\n";
    NSString *errorLine = @"[ERROR] Uh oh!\n";
    NSData *normalLineData = [normalLine dataUsingEncoding:NSUTF8StringEncoding];
    NSData *errorLineData = [errorLine dataUsingEncoding:NSUTF8StringEncoding];
    
    NSMutableSet<NSNumber *> *errorLineIndexes = [NSMutableSet new];
    while([errorLineIndexes count] < 8) {
        NSUInteger randomIndex = [self randomNumberInRange:range];
        NSNumber *num = [NSNumber numberWithUnsignedInteger:randomIndex];
        [errorLineIndexes addObject:num];
    }
    
    NSFileManager *fm = [NSFileManager defaultManager];
    [fm createFileAtPath:filePath contents:nil attributes:nil];
    NSFileHandle *handle = [NSFileHandle fileHandleForWritingAtPath:filePath];
    
    for(NSUInteger i = 0; i < lines; i++) {
        NSNumber *num = [NSNumber numberWithUnsignedInteger:i];
        if([errorLineIndexes containsObject:num]) {
            [handle writeData:errorLineData];
        } else {
            [handle writeData:normalLineData];
        }
    }
}

- (NSUInteger)randomNumberInRange:(NSRange)range {
    NSUInteger randomInteger = range.location + arc4random_uniform((uint32_t) range.length);
    return randomInteger;
}
@end
