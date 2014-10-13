//
//  TableHeaderViewController.m
//  FlexibleTableHeader
//
//  Created by Nick Saunders on 10/5/14.
//  Copyright (c) 2014 Safe Allergy. All rights reserved.
//

#import "TableHeaderViewController.h"

@interface TableHeaderViewController ()

@end

@implementation TableHeaderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.tableView setDataSource:self];
    [self.tableView setDelegate:self];
    self.isExpanded = NO;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//    [self updateHeaderSize];
//    [self.innerHeaderView layoutIfNeeded];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateHeaderSize {
//    [self.testLabel layoutIfNeeded];
    
    [self.headerView setNeedsLayout];
    [self.headerView layoutIfNeeded];
    NSLog(@"Original header height as: %f", self.headerView.frame.size.height);
    NSLog(@"Original label height as: %f", self.testLabel.frame.size.height);
    
    CGSize l = [self.testLabel systemLayoutSizeFittingSize: UILayoutFittingCompressedSize];
    CGSize h = [self.headerView systemLayoutSizeFittingSize: UILayoutFittingCompressedSize];

    // TODO get width working - it's 900+ for some reason
    NSLog(@"Setting preferred width to %f", l.width);
    self.testLabel.preferredMaxLayoutWidth = l.width;
    
    CGRect headerFrame = self.headerView.frame;
    NSLog(@"Calculated header height as: %f", h.height);
    NSLog(@"Calculated label height as: %f", l.height);
    headerFrame.size.height = h.height;
    self.headerView.frame = headerFrame;
    [self.tableView setTableHeaderView:self.headerView];

    
//    CGFloat height = [self.innerHeaderView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height + self.innerHeaderView.frame.origin.y; // adding the origin because innerHeaderView starts partway down headerView.
//    
//    CGRect headerFrame = self.headerView.frame;
//    headerFrame.size.height = height;
//    self.headerView.frame = headerFrame;
//    [self.tableView setTableHeaderView:self.headerView];
}

- (IBAction)handleExpandButton:(id)sender {
    
    if ( !self.isExpanded ) {
        self.testLabel.text = @"Do any additional setup after loading the view, typically from a nib. Do any additional setup after loading the view, typically from a nib. Do any additional setup after loading the view, typically from a nib. Do any additional setup after loading the view, typically from a nib.";
    }
    else {
        self.testLabel.text = @"This is a test label.  It could be one or multiple lines.  The header length must shift to adjust to the contents of the label.";
    }
        
    self.isExpanded = !self.isExpanded;
//    [self updateHeaderSize];
}



#pragma mark - Table view data source

- (NSInteger) numberOfSectionsInTableView: (UITableView *) tableView
{
    return 1;
}

- (NSInteger) tableView: (UITableView *)tableView numberOfRowsInSection: (NSInteger) section
{
    return 1;
}

- (UITableViewCell *) tableView: (UITableView *) tableView cellForRowAtIndexPath: (NSIndexPath *) indexPath
{
    UITableViewCell *cell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier: @"CellPrototype" ];
    
    cell.textLabel.text = @"Cell contents";
    
    return cell;
}

@end
