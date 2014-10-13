//
//  TableLabelWrappingView.m
//  FlexibleTableHeader
//
//  Created by Nick Saunders on 10/12/14.
//  Copyright (c) 2014 Safe Allergy. All rights reserved.
//

#import "TableLabelWrappingView.h"

@implementation TableLabelWrappingView

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat availableLabelWidth = self.label.frame.size.width;
    self.label.preferredMaxLayoutWidth = availableLabelWidth;
    
    [super layoutSubviews];
}

@end
