//
//  HWSChallenge35_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/20/23.
//

#import "HWSChallenge35_ObjC.h"
#import <AppKit/AppKit.h>

@implementation HWSChallenge35_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSString *dir = [input objectAtIndex:0];
    [self convertJpegsToPngsInDirectory:dir];
    return nil;
}

- (void)convertJpegsToPngsInDirectory:(NSString *)dir {
    NSURL *url = [NSURL fileURLWithPath:dir];
    NSImage *img = [[NSImage alloc] initWithContentsOfURL:url];
    NSData *tiffData = [img TIFFRepresentation];
    NSBitmapImageRep *imageRep = [[NSBitmapImageRep alloc] initWithData:tiffData];
    NSData *pngData = [imageRep representationUsingType:NSBitmapImageFileTypePNG properties:@{}];
    [pngData writeToURL:[[url URLByDeletingPathExtension] URLByAppendingPathExtension:@"png"] atomically:NO];
}
@end
