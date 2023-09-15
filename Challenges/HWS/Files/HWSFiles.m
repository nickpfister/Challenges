//
//  HWSFiles.m
//  Challenges
//
//  Created by Nick Pfister on 9/15/23.
//

#import "HWSFiles.h"

@implementation HWSFiles
+ (NSString *)fullPathOfFile:(NSString *)filename {
    NSString *folderPath = [@__FILE__ stringByDeletingLastPathComponent];
    return [folderPath stringByAppendingFormat:@"/%@", filename];
}
@end
