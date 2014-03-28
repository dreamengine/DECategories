//
//  NSMutableDictionary+DENonNil.m
//  
//
//  Created by Jeremy Flores on 3/26/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "NSMutableDictionary+DENonNil.h"

@implementation NSMutableDictionary (DENonNil)

-(void)setObjectIfNonNil:(id)anObject forKey:(id<NSCopying>)aKey {
    if (anObject) {
        [self setObject:anObject forKey:aKey];
    }
}

@end
