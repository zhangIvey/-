//
//  MVVMViewController.m
//  PrintDemo
//
//  Created by yaoln on 2017/3/28.
//  Copyright © 2017年 张泽. All rights reserved.
//

#import "MVVMViewController.h"
#import "MVVMView.h"
#import "MVVMViewModel.h"
#import "MVVMPaperModel.h"

@interface MVVMViewController ()

@property(nonatomic, strong) MVVMView *mvvmView;
@property(nonatomic, strong) MVVMViewModel *viewModel;
@property(nonatomic, strong) MVVMPaperModel *paperModel;

@end

@implementation MVVMViewController

-(instancetype)init
{
    self = [super init];
    if (self) {
        
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _paperModel = [MVVMPaperModel new];
    self.paperModel = _paperModel;
    _paperModel.contents = @"line data init";
    
    
    _mvvmView = [MVVMView new];
    _mvvmView.frame = self.view.frame;
    self.mvvmView = _mvvmView;
    [self.view addSubview:self.mvvmView];
    
    _viewModel = [MVVMViewModel new];
    self.viewModel = _viewModel;
    [_viewModel setWithModel:_paperModel];
    
    _mvvmView.viewModel = _viewModel;
    [_mvvmView setWithViewModel:_viewModel];
    
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
