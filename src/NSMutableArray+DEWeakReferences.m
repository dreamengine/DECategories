//
//  NSMutableArray+DEWeakReferences.m
//
//  Created by Jeremy Flores on 6/2/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "NSMutableArray+DEWeakReferences.h"

@implementation NSMutableArray (DEWeakReferences)

+ (id)mutableArrayUsingWeakReferences {
    return [self mutableArrayUsingWeakReferencesWithCapacity:0];
}

+ (id)mutableArrayUsingWeakReferencesWithCapacity:(NSUInteger)capacity {
    CFArrayCallBacks callbacks = {0, NULL, NULL, CFCopyDescription, CFEqual};
    // We create a weak reference array
    return (id)CFBridgingRelease(CFArrayCreateMutable(0, capacity, &callbacks));
}

@end
