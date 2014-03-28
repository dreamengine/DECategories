//
//  UIImage+DEColorRect.m
//
//  Created by Jeremy Flores on 2/12/14.
//  Copyright (c) 2014 Dream Engine Interactive, Inc. All rights reserved.
//

#import "UIImage+DEColorRect.h"

#import <QuartzCore/QuartzCore.h>

@implementation UIImage (DEColorRect)

// from: http://stackoverflow.com/a/16984001/708798
+(UIImage *)imageWithColor: (UIColor *)color
                    ofSize: (CGSize)size {
    UIView *colorView = [[UIView alloc] initWithFrame:CGRectMake(0,0,size.width,size.height)];
    colorView.backgroundColor = color;
    
    UIGraphicsBeginImageContext(colorView.bounds.size);
    [colorView.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *colorImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return colorImage;
}

@end
