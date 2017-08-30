//
//  RNMall.m
//  RNMall
//
//  Created by iqiyi on 17/8/25.
//  Copyright © 2017年 iqiyi. All rights reserved.
//

#import "RNMall.h"
#import "RNMallOrdersViewController.h"
#import "RNMallViewController.h"

@implementation RNMall

+ (void) load
{
    [DLModulesManager registerByModuleID:@"RNMall" className:NSStringFromClass([self class])];
}

+ (void) launchWithParam:(DLModuleParameter *)param
{
    NSDictionary *params = param.originalParams;
    
    NSDictionary *localParams = param.localParams;
    
    UIViewController *rootVC = [localParams objectForKey:@"rootVC"];
    
    NSString *subID = [params objectForKey:@"subID"];
    
    if ([subID isEqualToString:@"main"]) {
        
        RNMallViewController *vc = [RNMallViewController new];
        [rootVC presentViewController:vc animated:YES completion:^{
            
        }];
    } else if ([subID isEqualToString:@"1"]) {
        RNMallOrdersViewController *vc = [RNMallOrdersViewController new];
        
        [rootVC presentViewController:vc animated:YES completion:^{
            
        }];
    }
}

@end
