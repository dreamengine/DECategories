//
//  UITableView+DEHideEmptyCells.m
//  Vurb
//
//  Created by Jeremy Flores on 8/6/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "UITableView+DEHideEmptyCells.h"

@implementation UITableView (DEHideEmptyCells)

-(void)applyHideEmptyCellsStyle {
    if (!self.tableFooterView) {
        self.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    }
}

@end
