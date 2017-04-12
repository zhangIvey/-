//
//  MVVMView.m
//  PrintDemo
//
//  Created by yaoln on 2017/3/28.
//  Copyright © 2017年 张泽. All rights reserved.
//

#import "MVVMView.h"

@interface MVVMView ()

@property(nonatomic, strong) UILabel *showLabel;
@property(nonatomic, strong) UIButton *updataButton;

@end

@implementation MVVMView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor yellowColor];
        
        //显示框
        _showLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, [[UIScreen mainScreen] bounds].size.width, 40)];
        _showLabel.backgroundColor = [UIColor grayColor];
        _showLabel.textColor = [UIColor whiteColor];
        _showLabel.textAlignment = NSTextAlignmentCenter;
        _showLabel.font = [UIFont systemFontOfSize:12.0f];
        self.showLabel = _showLabel;
        [self addSubview:_showLabel];
        
        
        //更新按钮
        _updataButton = [UIButton new];
        _updataButton.frame = CGRectMake(0, _showLabel.frame.size.height + _showLabel.frame.origin.y + 10, _showLabel.frame.size.width, _showLabel.frame.size.height);
        _updataButton.backgroundColor = [UIColor blackColor];
        [_updataButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_updataButton setTitle:@"打印更新" forState:UIControlStateNormal];
        [_updataButton addTarget:self action:@selector(updateActionClick) forControlEvents:UIControlEventTouchUpInside];
        self.updataButton= _updataButton;
        [self addSubview:_updataButton];
        
    }
    return self;
}
#pragma mark - 设置绑定关系
- (void)setWithViewModel:(MVVMViewModel *)viewModelTemp
{
    self.viewModel = viewModelTemp;
//    self.KVOController = [[FBKVOController alloc] initWithObserver:self];
    //设置监听
    [self.KVOController observe:viewModelTemp keyPath:@"contentString" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionInitial block:^(id observer, id object, NSDictionary *change){
    
        NSLog(@"change = %@",change);
        self.showLabel.text = [change objectForKey:@"new"];
    }];
}

#pragma mark - click's method
-(void)updateActionClick
{
    NSLog(@"点击，发生交互");
    [self.viewModel updateinfo];

}


#pragma mark - method
-(void)printOnView
{
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
