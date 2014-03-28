//
//  UIImage+DETintColor.h
//  
//
//  Created by Jeremy Flores on 4/30/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (DETintColor)

- (UIImage *)imageTintedWithColor:(UIColor *)color;
- (UIImage *)imageTintedWithColor:(UIColor *)color fraction:(CGFloat)fraction;

@end
