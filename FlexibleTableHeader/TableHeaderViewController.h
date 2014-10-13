//
//  TableHeaderViewController.h
//  FlexibleTableHeader
//
//  Created by Nick Saunders on 10/5/14.
//  Copyright (c) 2014 Safe Allergy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableHeaderViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (weak, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UIView *innerHeaderView;

@property (weak, nonatomic) IBOutlet UILabel *testLabel;

- (IBAction)handleExpandButton:(id)sender;

@property BOOL isExpanded;

@end

