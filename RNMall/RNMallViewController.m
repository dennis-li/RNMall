//
//  RNMallViewController.m
//  RNMall
//
//  Created by iqiyi on 17/8/25.
//  Copyright © 2017年 iqiyi. All rights reserved.
//

#import "RNMallViewController.h"
#import "RNMallVIPViewController.h"
#import "RNMallOrdersViewController.h"
#import <React/RCTRootView.h>

@interface RNMallViewController ()


@end

@implementation RNMallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *backButton = [UIButton new];
    backButton.frame = CGRectMake(20, 20, 30, 30);
    [self.view addSubview:backButton];
    [backButton setImage:[UIImage imageNamed:@"icon_wgift"] forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button = [UIButton new];
    button.frame = CGRectMake(100, 200, 100, 30);
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    [button setTitle:@"会员" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(showVIP:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *orderButton = [UIButton new];
    orderButton.frame = CGRectMake(100, 400, 100, 30);
    orderButton.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:orderButton];
    [orderButton setTitle:@"订单" forState:UIControlStateNormal];
    [orderButton addTarget:self action:@selector(showOrders:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void) showVIP:(id) sender
{
    NSURL *jsCodeLocation = [NSURL
                             URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios"];
    jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
    
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                         moduleName        : @"RNApp"
                         initialProperties :
     @{
       @"title" : @"购买会员",
       @"subTitle":@"购买一个月",
       @"from":@"商城"
       }
                          launchOptions    : nil];
    
    UIViewController *vc = [UIViewController new];
    vc.view = rootView;
    
    [self presentViewController:vc animated:YES completion:^{
        
    }];
    
}

- (void) showOrders:(id) sender
{
    RNMallOrdersViewController *vc = [RNMallOrdersViewController new];
    
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}

- (void) back:(id) sender
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}


@end
