//
//  HWSChallenge1_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 8/30/23.
//

#import "HWSChallenge1_ObjC.h"

@implementation HWSChallenge1_ObjC

- (void)solve {
    [self printResultForInput:@"No duplicates"];
    [self printResultForInput:@"abcdefghijklmnopqrstuvwxyz"];
    [self printResultForInput:@"Hello, world!"];
}

- (void)printResultForInput:(NSString*)input {
    BOOL result = [self foundDuplicateCharactersInText:input];
    if(result) {
        printf("Text \%s\" contains duplicate characters.\n", [input cStringUsingEncoding:NSUTF8StringEncoding]);
    } else {
        printf("Text \"%s\" does not contain duplicate characters.\n", [input cStringUsingEncoding:NSUTF8StringEncoding]);
    }
}

- (BOOL)foundDuplicateCharactersInText:(NSString*)text {
    NSMutableSet* set = [NSMutableSet new];
    for(NSUInteger i = 0; i < [text length]; i++){
        NSString* subString = [[NSString alloc] initWithFormat:@"%c",[text characterAtIndex:i]];
        [set addObject:subString];
    }
    
    return [text length] != [set count];
}

@end
