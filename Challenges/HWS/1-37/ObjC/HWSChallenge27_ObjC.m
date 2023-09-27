//
//  HWSChallenge27_ObjC.m
//  Challenges
//
//  Created by Nick Pfister on 9/15/23.
//

#import "HWSChallenge27_ObjC.h"

@implementation HWSChallenge27_ObjC
- (NSArray *)solveForInput:(NSArray *)input {
    NSMutableArray *output = [NSMutableArray new];
    NSString *path = [input objectAtIndex:0];
    
    for(NSUInteger i = 1; i < [input count]; i++){
        NSNumber *numLines = [input objectAtIndex:i];
        NSString *result =  [self lastLines:[numLines integerValue] ofFileAtPath:path];
        [output addObject:result];
    }
    
    return output;
}

- (NSString *)lastLines:(NSUInteger)lines ofFileAtPath:(NSString *)path {
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForReadingAtPath:path];
    NSString *contents = [[NSString alloc] initWithData:[fileHandle availableData] encoding:NSUTF8StringEncoding];
    
    NSArray<NSString *> *components = [contents componentsSeparatedByString:@"\n"];
    NSMutableArray<NSString *> *lastLines = [NSMutableArray new];
    
    NSUInteger count = [components count];
    
    for(NSUInteger i = 0; i < count; i++) {
        if([lastLines count] == lines) {
            break;
        }
        
        [lastLines addObject:[components objectAtIndex:count - i - 1]];
    }
    
    return [lastLines componentsJoinedByString:@", "];
}
@end
