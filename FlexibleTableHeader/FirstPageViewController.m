//
//  FirstPageViewController
//  FlexibleTableHeader
//
//  Created by Nick Saunders on 10/11/14.
//  Copyright (c) 2014 Safe Allergy. All rights reserved.
//

#import "FirstPageViewController.h"

@interface FirstPageViewController ()

@end

@implementation FirstPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)updateHeaderSize {
//    
//    //    [self.testLabel layoutIfNeeded];
//    
//    //    [self.wrappingView setNeedsLayout];
//    //    [self.wrappingView layoutIfNeeded];
//    NSLog(@"Original header height as: %f", self.wrappingView.frame.size.height);
//    NSLog(@"Original label height as: %f", self.testLabel.frame.size.height);
//    
//    CGSize l = [self.testLabel systemLayoutSizeFittingSize: UILayoutFittingCompressedSize];
//    CGSize h = [self.wrappingView systemLayoutSizeFittingSize: UILayoutFittingCompressedSize];
//    NSLog(@"Intrinsic Content size: w %f, h %f", self.testLabel.intrinsicContentSize.width, self.testLabel.intrinsicContentSize.height);
//    
//    // TODO get width working - it's way too wide for some reason
//    NSLog(@"Setting preferred width to %f", l.width);
//    self.testLabel.preferredMaxLayoutWidth = l.width;
//    
//    CGRect labelFrame = self.testLabel.frame;
//    NSLog(@"Calculated header height as: %f", h.height);
//    NSLog(@"Calculated label height as: %f", l.height);
//    labelFrame.size.height = l.height;
//    self.testLabel.frame = labelFrame;
//}

- (IBAction)handleExpand:(id)sender {
    
    if ( !self.isExpanded ) {
        self.testLabel.text = @"Do any additional setup after loading the view, typically from a nib. Do any additional setup after loading the view, typically from a nib. Do any additional setup after loading the view, typically from a nib. Do any additional setup after loading the view, typically from a nib.";
    }
    else {
        self.testLabel.text = @"This is a test label.  It could be one or multiple lines.  The header length must shift to adjust to the contents of the label.";
    }
    
    self.isExpanded = !self.isExpanded;
}


- (IBAction)handleSecondExpand:(id)sender {
    
    if ( !self.isExpanded ) {
        self.testLabel2.text = @"Do any additional setup after loading the view, typically from a nib. Do any additional setup after loading the view, typically from a nib. Do any additional setup after loading the view, typically from a nib. Do any additional setup after loading the view, typically from a nib.";
    }
    else {
        self.testLabel2.text = @"This is a test label.  It could be one or multiple lines.  The header length must shift to adjust to the contents of the label.";
    }
    
    self.isExpanded = !self.isExpanded;
}

@end
