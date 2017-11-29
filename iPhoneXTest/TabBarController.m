//
//  TabBarController.m
//  iPhoneXTest
//
//  Created by 黄珂耀 on 2017/11/29.
//  Copyright © 2017年 黄珂耀. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController () <UITabBarControllerDelegate>

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.delegate = self;
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    if ([viewController isKindOfClass:NSClassFromString(@"ViewController1")]) {
        self.title = @"VC1";
        return;
    }
    if ([viewController isKindOfClass:NSClassFromString(@"ViewController2")]) {
        self.title = @"VC2";
        return;
    }
    if ([viewController isKindOfClass:NSClassFromString(@"ViewController3")]) {
        self.title = @"VC3";
        return;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
