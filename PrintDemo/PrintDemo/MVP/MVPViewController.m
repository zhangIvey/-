//
//  MVPViewController.m
//  PrintDemo
//
//  Created by 张泽 on 2017/3/7.
//  Copyright © 2017年 张泽. All rights reserved.
//

#import "MVPViewController.h"
#import "MVPView.h"
#import "MVPPresenter.h"
#import "MVPPaperModel.h"


@interface MVPViewController ()
@property(nonatomic, strong) MVPPresenter *presenter;
@property(nonatomic, strong) MVPView *myView;
@property(nonatomic, strong) MVPPaperModel *paperModel;


@end

@implementation MVPViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        
        
        
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    self.presenter = [MVPPresenter new];
    
    self.myView = [MVPView new];
    _myView.frame = self.view.bounds;
    
    
    self.paperModel = [MVPPaperModel new];
    
    _presenter.mvpModel = _paperModel;
    _presenter.mvpView = _myView;
    
    _myView.delegate = _presenter;
    
    _paperModel.contents = @"LINE : 0";
    
    
    [self.view addSubview:_myView];
    
    [self.presenter printTask];
    
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
