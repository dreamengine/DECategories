//
//  UIGestureRecognizer+DECancel.m
//
//  Created by Jeremy Flores on 3/6/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "UIGestureRecognizer+DECancel.h"

@implementation UIGestureRecognizer (DECancel)

- (void)cancel {
    self.enabled = NO;
    self.enabled = YES;
}

@end
