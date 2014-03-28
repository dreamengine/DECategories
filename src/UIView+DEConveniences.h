//
//  UIView+DEConveniences.h
//
//
//  Created by Jeremy Flores on 5/3/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface UIView (DEConveniences)

@property (nonatomic) CGFloat x;
@property (nonatomic) CGFloat y;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;

+(instancetype)viewFromNib;

@end
