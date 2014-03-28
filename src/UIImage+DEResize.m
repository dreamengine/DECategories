//
//  UIImage+DEResize.m
//  
//
//  Created by Jeremy Flores on 4/5/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "UIImage+DEResize.h"

@implementation UIImage (DEResize)

// from: http://stackoverflow.com/a/2658801/708798
+ (UIImage*)imageWithImage:(UIImage*)image 
               scaledToSize:(CGSize)newSize {
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 0.0);
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return newImage;
}

-(UIImage *)resizedImageScaledToSize: (CGSize)newSize {
    return [UIImage imageWithImage:self scaledToSize:newSize];
}


+(UIImage *)imageWithImage:(UIImage *)image
           scaledToFitSize:(CGSize)size {
    CGFloat aspect = image.size.width / image.size.height;

    CGSize newSize;
    if (size.width / aspect <= size.height)
    {
        newSize = CGSizeMake(size.width, size.width / aspect);
    }
    else
    {
        newSize = CGSizeMake(size.height * aspect, size.height);
    }

    return [UIImage imageWithImage: image
                      scaledToSize: newSize];
}

- (UIImage *)imageScaledToFitSize:(CGSize)size {
    return [UIImage imageWithImage: self
                   scaledToFitSize: size];
}

@end
