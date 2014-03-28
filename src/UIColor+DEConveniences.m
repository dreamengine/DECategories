//
//  UIColor+DEConveniences.m
//  
//
//  Created by Jeremy Flores on 5/1/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "UIColor+DEConveniences.h"

UIColor* UIColorFromValues(float red, float green, float blue) {
    return UIColorFromValuesWithAlpha(red, green, blue, 1.f);
}

UIColor* UIColorFromValuesWithAlpha(float red, float green, float blue, float alpha) {
    return [UIColor colorWithRed: red
                           green: green
                            blue: blue
                           alpha: alpha];
}

UIColor* UIColorFromIntValues(int red, int green, int blue) {
    return UIColorFromIntValuesWithAlpha(red, green, blue, 255);
}

UIColor* UIColorFromIntValuesWithAlpha(int red, int green, int blue, int alpha) {
    return [UIColor colorWithRed: 1.f*red/255
                           green: 1.f*green/255
                            blue: 1.f*blue/255
                           alpha: 1.f*alpha/255];
}

UIColor* UIColorFromHexString(NSString *hexString) {
    return [UIColor colorWithHexString:hexString];
}


@implementation UIColor (DEConveniences)

// from: http://stackoverflow.com/a/7180905/708798

+ (UIColor *) colorWithHexString: (NSString *) hexString {
    NSString *colorString = [[hexString stringByReplacingOccurrencesOfString: @"#" withString: @""] uppercaseString];
    CGFloat red = 0.f;
    CGFloat green = 0.f;
    CGFloat blue = 0.f;
    CGFloat alpha = 1.f;

    switch ([colorString length]) {
        case 3: // #RGB
            alpha = 1.0f;
            red   = [self colorComponentFrom: colorString start: 0 length: 1];
            green = [self colorComponentFrom: colorString start: 1 length: 1];
            blue  = [self colorComponentFrom: colorString start: 2 length: 1];
            break;
        case 4: // #ARGB
            alpha = [self colorComponentFrom: colorString start: 0 length: 1];
            red   = [self colorComponentFrom: colorString start: 1 length: 1];
            green = [self colorComponentFrom: colorString start: 2 length: 1];
            blue  = [self colorComponentFrom: colorString start: 3 length: 1];
            break;
        case 6: // #RRGGBB
            alpha = 1.0f;
            red   = [self colorComponentFrom: colorString start: 0 length: 2];
            green = [self colorComponentFrom: colorString start: 2 length: 2];
            blue  = [self colorComponentFrom: colorString start: 4 length: 2];
            break;
        case 8: // #AARRGGBB
            alpha = [self colorComponentFrom: colorString start: 0 length: 2];
            red   = [self colorComponentFrom: colorString start: 2 length: 2];
            green = [self colorComponentFrom: colorString start: 4 length: 2];
            blue  = [self colorComponentFrom: colorString start: 6 length: 2];
            break;
        default:
            break;
    }

    return UIColorFromValuesWithAlpha(red, green, blue, alpha);
}

+ (CGFloat) colorComponentFrom: (NSString *) string
                         start: (NSUInteger) start
                        length: (NSUInteger) length {
    NSString *substring = [string substringWithRange: NSMakeRange(start, length)];
    NSString *fullHex = length == 2 ? substring : [NSString stringWithFormat: @"%@%@", substring, substring];
    unsigned hexComponent;
    [[NSScanner scannerWithString: fullHex] scanHexInt: &hexComponent];
    return hexComponent / 255.0;
}

@end
