//
//  UIImage+DEColorRect.h
//
//  Created by Jeremy Flores on 2/12/14.
//  Copyright (c) 2014 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface UIImage (DEColorRect)

+(UIImage *)imageWithColor: (UIColor *)color
                    ofSize: (CGSize)size;

@end
