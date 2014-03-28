//
//  UIView+DEConveniences.m
//
//
//  Created by Jeremy Flores on 5/3/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "UIView+DEConveniences.h"

#import "UINib+DEConveniences.h"

@implementation UIView (DEConveniences)

@dynamic x;
@dynamic y;
@dynamic width;
@dynamic height;

-(CGFloat)x {
    return self.frame.origin.x;
}

-(void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

-(CGFloat)y {
    return self.frame.origin.y;
}

-(void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

-(CGFloat)width {
    return self.frame.size.width;
}

-(void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

-(CGFloat)height {
    return self.frame.size.height;
}

-(void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

+(instancetype)viewFromNib {
    return [UINib firstObjectWithNibName:NSStringFromClass([self class])];
}

@end
