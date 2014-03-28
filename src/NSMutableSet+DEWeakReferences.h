//
//  NSMutableSet+DEWeakReferences.h
//
//  Created by Jeremy Flores on 6/2/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableSet (DEWeakReferences)

+ (id)mutableSetUsingWeakReferences;

+ (id)mutableSetUsingWeakReferencesWithCapacity:(NSUInteger)capacity;

@end
