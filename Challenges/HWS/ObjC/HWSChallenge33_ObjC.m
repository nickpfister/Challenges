//
//  HWSChallenge33_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/19/23.
//

#import "HWSChallenge33_ObjC.h"

@implementation HWSChallenge33_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSString *dirPath = [input objectAtIndex:0];
    return [self findDuplicateFilesInDirectory:dirPath];
}

- (NSArray<NSString *> *)findDuplicateFilesInDirectory:(NSString *)dir {
    NSMutableSet<NSString *> *duplicateFiles = [NSMutableSet new];
    NSFileManager *fm = [NSFileManager defaultManager];
    NSDirectoryEnumerator *dirEnum = [fm enumeratorAtPath:dir];
    NSMutableSet<NSString *> *foundFiles = [NSMutableSet new];
    NSString *filePath;
    while((filePath = [dirEnum nextObject])) {
        BOOL isDir;
        NSString *fullPath = [dir stringByAppendingPathComponent:filePath];
        [fm fileExistsAtPath:fullPath isDirectory:&isDir];
        if(!isDir) {
            NSString *fileName = [filePath lastPathComponent];
            if([foundFiles containsObject:fileName]) {
                [duplicateFiles addObject:fileName];
            } else {
                [foundFiles addObject:fileName];
            }
        }
    }
    
    return [duplicateFiles allObjects];
}
@end
