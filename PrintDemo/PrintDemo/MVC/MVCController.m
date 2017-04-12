//
//  MVCController.m
//  PrintDemo
//
//  Created by 张泽 on 2017/3/5.
//  Copyright © 2017年 张泽. All rights reserved.
//

#import "MVCController.h"
#import "MVCView.h"
#import "Paper.h"

@interface MVCController () <MVCViewDelegate>

@property(nonatomic, strong) MVCView *mvcView;
@property(nonatomic, strong) Paper *paper;

@end

@implementation MVCController

- (void)print
{
    int number = arc4random()*10;
    _paper.content = [NSString stringWithFormat:@"line ：%d",number];
    [self printOnView];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        //属性初始化
        self.mvcView = [MVCView new];
        _mvcView.delegate = self;
        _mvcView.frame = self.view.frame;
        
        self.paper = [Paper new];
        //默认值内容
        _paper.content = @"重新开始学习，努力进取。";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:_mvcView];
    [self printOnView];
    // Do any additional setup after loading the view.
}

//打印方法
- (void)printOnView
{
    [self.mvcView printOnView:self.paper];
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
