//
//  UIView+DEFirstResponder.m
//  
//
//  Created by Jeremy Flores on 3/25/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "UIView+DEFirstResponder.h"

@implementation UIView (DEFirstResponder)

-(UIView *)findFirstResponder {
    if (self.isFirstResponder) {
        return self;
    }
    else {
        for (UIView *subView in self.subviews) {
            UIView *firstResponder = [subView findFirstResponder];

            if (firstResponder) {
                return firstResponder;
            }
        }

        return nil;
    }
}

@end
