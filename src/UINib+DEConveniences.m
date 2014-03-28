//
//  UINib+DEConveniences.m
//
//
//  Created by Jeremy Flores on 5/1/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "UINib+DEConveniences.h"

@implementation UINib (DEConveniences)

+(id)firstObjectWithNibName:(NSString *)nibName {
    UINib *nib = [UINib nibWithNibName: nibName
                                bundle: nil];
    id object = [[nib instantiateWithOwner: nil
                                   options: nil] objectAtIndex:0];

    return object;
}

@end
