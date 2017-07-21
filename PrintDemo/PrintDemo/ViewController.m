//
//  ViewController.m
//  PrintDemo
//
//  Created by 张泽 on 2017/3/5.
//  Copyright © 2017年 张泽. All rights reserved.
//

#import "ViewController.h"
#import "MVCController.h"
#import "MVPViewController.h"
#import "MVVMViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//我在测试分支
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置：加载之后2秒后再进行加载
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self showMVC];
        [self showMVP];
//        [self showMVVM];
    });
}

- (void)showMVP
{
    MVPViewController *mvpController = [MVPViewController new];
    [self presentViewController:mvpController animated:YES completion:nil];
}

- (void)showMVC{
    MVCController *mvcController = [[MVCController alloc] init];
    [self presentViewController:mvcController animated:YES completion:nil];
}

- (void)showMVVM{
    MVVMViewController *mvvmViewController = [[MVVMViewController alloc] init];
    [self presentViewController:mvvmViewController animated:YES completion:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
