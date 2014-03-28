//
//  UIButton+DEBackgroundColor.m
//
//  Created by Jeremy Flores on 2/12/14.
//  Copyright (c) 2014 Dream Engine Interactive, Inc. All rights reserved.
//

#import "UIButton+DEBackgroundColor.h"

#import "UIImage+DEColorRect.h"

@implementation UIButton (DEBackgroundColor)

// from: http://stackoverflow.com/a/16984001/708798
-(void)setBackgroundColor: (UIColor *)color
                 forState: (UIControlState)state {
    UIImage *colorImage = [UIImage imageWithColor: color
                                           ofSize: self.frame.size];
    
    [self setBackgroundImage: colorImage
                    forState: state];
}

@end
