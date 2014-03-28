//
//  NSNotification+DEConveniences.h
//
//
//  Created by Jeremy Flores on 5/1/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNotification (DEConveniences)

// conveniences to post notifications directly to NSNotificationCenter's defaultCenter
+(void) postNotificationWithName: (NSString *)name;

+(void) postNotificationWithName: (NSString *)name
                          object: (id)object;

+(void) postNotificationWithName: (NSString *)name
                          object: (id)object
                        userInfo: (NSDictionary *)userInfo;

@end
