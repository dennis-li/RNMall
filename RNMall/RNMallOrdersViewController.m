//
//  RNMallOrdersViewController.m
//  RNMall
//
//  Created by iqiyi on 17/8/25.
//  Copyright © 2017年 iqiyi. All rights reserved.
//

#import "RNMallOrdersViewController.h"

@interface RNMallOrdersViewController () <UITableViewDelegate ,UITableViewDataSource>

@property(nonatomic ,strong) UITableView *tableView;

@end

@implementation RNMallOrdersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *backButton = [UIButton new];
    backButton.frame = CGRectMake(20, 20, 100, 30);
    backButton.backgroundColor = [UIColor redColor];
    [self.view addSubview:backButton];
    [backButton setTitle:@"返回" forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.tableView];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = nil;
    static NSString *cellID = @"cellID";
    
    cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"订单 --- %ld",indexPath.row];

    return cell;
}

- (UITableView *) tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.frame = CGRectMake(0, 100, CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetHeight([UIScreen mainScreen].bounds)-100);
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    
    return _tableView;
}

- (void) back:(id) sender
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}


@end
