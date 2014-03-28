//
//  NSData+DEImageMimeType.m
//
//  Created by Jeremy Flores on 3/8/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//
//  from: http://stackoverflow.com/a/5042365/708798

#import "NSData+DEImageMimeType.h"

@implementation NSData (DEImageMimeType)

-(NSString *)imageDataMimeType {
    uint8_t c;
    [self getBytes:&c length:1];

    switch (c) {
        case 0xFF:
            return @"image/jpeg";
        case 0x89:
            return @"image/png";
        case 0x47:
            return @"image/gif";
        case 0x49:
        case 0x4D:
            return @"image/tiff";
        case 0x42:
            return @"image/bmp";
        case 0x52:
            // from: https://github.com/rs/SDWebImage/blob/master/SDWebImage/NSData%2BImageContentType.m
            // R as RIFF for WEBP
            if ([self length] < 12) {
                return nil;
            }
            
            NSString *testString = [[NSString alloc] initWithData:[self subdataWithRange:NSMakeRange(0, 12)] encoding:NSASCIIStringEncoding];
            if ([testString hasPrefix:@"RIFF"] && [testString hasSuffix:@"WEBP"]) {
                return @"image/webp";
            }
            
            return nil;
    }
    return nil;
}

@end
