//
//  HWSChallenge30_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/18/23.
//

#import "HWSChallenge30_ObjC.h"

@implementation HWSChallenge30_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSString *path = [input objectAtIndex:0];
    
    return @[[self jpegsCreatedRecentlyInDirectory:path]];
}

- (NSArray<NSString *> *)jpegsCreatedRecentlyInDirectory:(NSString *)dirPath {
    NSError *__autoreleasing contentsError;
    
    NSArray<NSString *> *fileNames = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:dirPath error:&contentsError];
    NSMutableArray<NSString *> *recentJpegPaths = [NSMutableArray new];
    
    for(NSString *fileName in fileNames) {
        NSString *extension = [[fileName pathExtension] lowercaseString];
        if([extension isEqual: @"jpg"] || [extension  isEqual: @"jpeg"]) {
            NSError *__autoreleasing attributesError;
            NSString *filePath = [dirPath stringByAppendingString:fileName];
            NSDictionary<NSFileAttributeKey, id> *attributes = [[NSFileManager defaultManager]
                                                                attributesOfItemAtPath:filePath
                                                                error:&attributesError];
            
            NSDate *createdDate = [attributes objectForKey:NSFileCreationDate];
            NSDate *twoDaysAgo = [[NSDate date] dateByAddingTimeInterval:-48*60*60];
            if([twoDaysAgo earlierDate:createdDate] == twoDaysAgo) {
                [recentJpegPaths addObject:fileName];
            }
        }
    }
    
    return [NSArray arrayWithArray:recentJpegPaths];
}
@end
