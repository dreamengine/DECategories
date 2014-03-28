//
//  NSString+DERelativePaths.h
//
//  Created by Jeremy Flores on 6/3/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (DERelativePaths)

- (NSString*)stringWithPathRelativeTo:(NSString*)anchorPath;

@end
