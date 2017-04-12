//
//  MVPView.m
//  PrintDemo
//
//  Created by 张泽 on 2017/3/7.
//  Copyright © 2017年 张泽. All rights reserved.
//

#import "MVPView.h"

@interface MVPView ()

@property(nonatomic, strong) UILabel *_lb_content;
@property(nonatomic, strong) UIButton *_bt_content;

@end

@implementation MVPView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor grayColor];
        
        __lb_content = [UILabel new];
        self._lb_content = __lb_content;
        __lb_content.frame = CGRectMake(0, 30, 200, 30);
        __lb_content.backgroundColor = [UIColor orangeColor];
        __lb_content.textAlignment = NSTextAlignmentCenter;
        __lb_content.textColor = [UIColor whiteColor];
        [self addSubview:__lb_content];
        
        __bt_content = [UIButton new];
        self._bt_content = __bt_content;
        __bt_content.frame = CGRectMake(0, 100, 60, 30);
        __bt_content.backgroundColor = [UIColor greenColor];
        [__bt_content setTitle:@"打印" forState:UIControlStateNormal];
        [__bt_content addTarget:self action:@selector(printClick) forControlEvents:UIControlEventTouchUpInside];
    
        [self addSubview:__bt_content];
    }
    return self;
}

- (void)printClick
{
    if (_delegate != nil && [_delegate respondsToSelector:@selector(printOnView)]) {
        [_delegate printOnView];
    }
}

- (void)print:(NSString *)string
{
    self._lb_content.text = string;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
