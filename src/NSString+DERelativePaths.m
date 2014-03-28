//
//  NSString+DERelativePaths.m
//
//  Created by Jeremy Flores on 6/3/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//
//  from: http://stackoverflow.com/a/6542181/708798

#import "NSString+DERelativePaths.h"

@implementation NSString (DERelativePaths)

- (NSString*)stringWithPathRelativeTo:(NSString*)anchorPath {
    NSArray *pathComponents = [self pathComponents];
    NSArray *anchorComponents = [anchorPath pathComponents];
    
    NSInteger componentsInCommon = MIN([pathComponents count], [anchorComponents count]);
    for (NSInteger i = 0, n = componentsInCommon; i < n; i++) {
        if (![[pathComponents objectAtIndex:i] isEqualToString:[anchorComponents objectAtIndex:i]]) {
            componentsInCommon = i;
            break;
        }
    }
    
    NSUInteger numberOfParentComponents = [anchorComponents count] - componentsInCommon;
    NSUInteger numberOfPathComponents = [pathComponents count] - componentsInCommon;
    
    NSMutableArray *relativeComponents = [NSMutableArray arrayWithCapacity:
                                          numberOfParentComponents + numberOfPathComponents];
    for (NSInteger i = 0; i < numberOfParentComponents; i++) {
        [relativeComponents addObject:@".."];
    }
    [relativeComponents addObjectsFromArray:
     [pathComponents subarrayWithRange:NSMakeRange(componentsInCommon, numberOfPathComponents)]];
    return [NSString pathWithComponents:relativeComponents];
}

@end
