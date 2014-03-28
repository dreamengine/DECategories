//
//  NSMutableDictionary+DENonNil.h
//  
//
//  Created by Jeremy Flores on 3/26/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (DENonNil)

-(void)setObjectIfNonNil:(id)anObject forKey:(id<NSCopying>)aKey;

@end
