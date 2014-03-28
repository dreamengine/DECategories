//
//  UIImage+TintColor.m
//  
//
//  Created by Jeremy Flores on 4/30/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//
//  from: https://github.com/mattgemmell/MGImageUtilities/blob/master/Classes/UIImage%2BTint.m

#import "UIImage+DETintColor.h"

@implementation UIImage (DETintColor)

- (UIImage *)imageTintedWithColor:(UIColor *)color
{
	return [self imageTintedWithColor:color fraction:0.0];
}


- (UIImage *)imageTintedWithColor:(UIColor *)color fraction:(CGFloat)fraction
{
	if (color) {
		UIImage *image;
        
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_4_0
		if ([UIScreen instancesRespondToSelector:@selector(scale)]) {
			UIGraphicsBeginImageContextWithOptions([self size], NO, 0.f);
		} else {
			UIGraphicsBeginImageContext([self size]);
		}
#else
		UIGraphicsBeginImageContext([self size]);
#endif
		CGRect rect = CGRectZero;
		rect.size = [self size];

		[color set];
		UIRectFill(rect);
        
		[self drawInRect:rect blendMode:kCGBlendModeDestinationIn alpha:1.0];
        
		if (fraction > 0.0) {
			[self drawInRect:rect blendMode:kCGBlendModeSourceAtop alpha:fraction];
		}
		image = UIGraphicsGetImageFromCurrentImageContext();
		UIGraphicsEndImageContext();
        
		return image;
	}
    
	return self;
}

@end
