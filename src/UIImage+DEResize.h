//
//  UIImage+DEResize.h
//  
//
//  Created by Jeremy Flores on 4/5/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface UIImage (DEResize)

+ (UIImage*)imageWithImage: (UIImage *)image 
              scaledToSize: (CGSize)newSize;

-(UIImage *)resizedImageScaledToSize: (CGSize)newSize;

+(UIImage *)imageWithImage:(UIImage *)image
           scaledToFitSize:(CGSize)size;

- (UIImage *)imageScaledToFitSize:(CGSize)size;

@end
