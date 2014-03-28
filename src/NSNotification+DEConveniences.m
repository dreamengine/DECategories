//
//  NSNotification+DEConveniences.h
//
//
//  Created by Jeremy Flores on 5/1/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "NSNotification+DEConveniences.h"

@implementation NSNotification (DEConveniences)

+(void) postNotificationWithName: (NSString *)name {
    [[self class] postNotificationWithName: name
                                    object: nil
                                  userInfo: nil];
}

+(void) postNotificationWithName: (NSString *)name
                        object: (id)object {
    [[self class] postNotificationWithName: name
                                    object: object
                                  userInfo: nil];
}

+(void) postNotificationWithName: (NSString *)name
                          object: (id)object
                        userInfo: (NSDictionary *)userInfo {
    NSNotification *notification = [[self class] notificationWithName: name
                                                               object: object
                                                             userInfo: userInfo];

    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc postNotification:notification];
}

@end
