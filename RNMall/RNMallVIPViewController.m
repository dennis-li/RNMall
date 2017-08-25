//
//  RNMallVIPViewController.m
//  RNMall
//
//  Created by iqiyi on 17/8/25.
//  Copyright © 2017年 iqiyi. All rights reserved.
//

#import "RNMallVIPViewController.h"

@interface RNMallVIPViewController ()

@end

@implementation RNMallVIPViewController

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
    
    UIButton *button = [UIButton new];
    button.frame = CGRectMake(100, 300, 100, 30);
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    [button setTitle:@"购买会员" forState:UIControlStateNormal];
}

- (void) back:(id) sender
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}


@end
