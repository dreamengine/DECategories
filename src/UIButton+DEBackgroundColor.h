//
//  UIButton+DEBackgroundColor.h
//
//  Created by Jeremy Flores on 2/12/14.
//  Copyright (c) 2014 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIButton (DEBackgroundColor)

-(void)setBackgroundColor: (UIColor *)color
                 forState: (UIControlState)state;

@end
