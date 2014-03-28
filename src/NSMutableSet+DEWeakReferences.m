//
//  NSMutableSet+DEWeakReferences.m
//
//  Created by Jeremy Flores on 6/2/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "NSMutableSet+DEWeakReferences.h"

@implementation NSMutableSet (DEWeakReferences)

+ (id)mutableSetUsingWeakReferences {
    return [self mutableSetUsingWeakReferencesWithCapacity:0];
}

+ (id)mutableSetUsingWeakReferencesWithCapacity:(NSUInteger)capacity {
    CFSetCallBacks callbacks = {0, NULL, NULL, CFCopyDescription, CFEqual};
    // We create a weak reference array
    return (id)CFBridgingRelease(CFSetCreateMutable(0, capacity, &callbacks));
}

@end
