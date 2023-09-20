//
//  HWSChallenge34_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/20/23.
//

#import "HWSChallenge34_ObjC.h"

@implementation HWSChallenge34_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSString *dir = [input objectAtIndex:0];
    return [self findExecutableFilesInDirectory:dir];
}

- (NSArray<NSString *> *)findExecutableFilesInDirectory:(NSString *)dir {
    NSFileManager *fm = [NSFileManager defaultManager];
    NSURL *dirURL = [NSURL fileURLWithPath:dir];
    NSDirectoryEnumerator *fileEnum = [fm
                                       enumeratorAtURL:dirURL
                                       includingPropertiesForKeys: @[NSURLIsDirectoryKey]
                                       options: NSDirectoryEnumerationSkipsSubdirectoryDescendants
                                       errorHandler:NULL];
    
    NSURL *file;
    NSMutableSet<NSString *> *executables = [NSMutableSet new];
    
    while(file = [fileEnum nextObject]) {
        if(file.hasDirectoryPath) {
            continue;
        }
        if([fm isExecutableFileAtPath:[file path]]) {
            [executables addObject:[file lastPathComponent]];
        }
    }
    
    return [executables allObjects];
}
@end
