//
//  UIColor+DEConveniences.h
//  
//
//  Created by Jeremy Flores on 5/1/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

// float values are from 0-1
UIColor* UIColorFromValues(float red, float green, float blue);
UIColor* UIColorFromValuesWithAlpha(float red, float green, float blue, float alpha);

// int values are from 0-255
UIColor* UIColorFromIntValues(int red, int green, int blue);
UIColor* UIColorFromIntValuesWithAlpha(int red, int green, int blue, int alpha);

UIColor* UIColorFromHexString(NSString *hexString);

@interface UIColor (DEConveniences)

// Accepts strings of the form: #RGB, #ARGB, #RRGGBB, and #AARRGGBB. If the string does not match any of the aforementioned patterns, then this method will return a black UIColor.
+(UIColor *) colorWithHexString: (NSString *)hexString;

@end
