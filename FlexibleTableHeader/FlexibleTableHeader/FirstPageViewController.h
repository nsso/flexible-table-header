//
//  FirstPageViewController
//  FlexibleTableHeader
//
//  Created by Nick Saunders on 10/11/14.
//  Copyright (c) 2014 Safe Allergy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstPageViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *testLabel;
@property (weak, nonatomic) IBOutlet UIView *wrappingView;
- (IBAction)handleExpand:(id)sender;


@property (weak, nonatomic) IBOutlet UILabel *testLabel2;
@property (weak, nonatomic) IBOutlet UIView *wrappingView2;
@property (weak, nonatomic) IBOutlet UIView *wrappingViewInner2;
- (IBAction)handleSecondExpand:(id)sender;

@property BOOL isExpanded;

@end
