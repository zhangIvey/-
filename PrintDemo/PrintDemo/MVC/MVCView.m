//
//  MVCView.m
//  PrintDemo
//
//  Created by 张泽 on 2017/3/5.
//  Copyright © 2017年 张泽. All rights reserved.
//

#import "MVCView.h"


@interface MVCView ()

@property(nonatomic, strong) UILabel *contentLabel;
@property(nonatomic, strong) UIButton *button;

@end

@implementation MVCView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor lightGrayColor];
        self.userInteractionEnabled = YES;
        
        self.contentLabel = [UILabel new];
        _contentLabel.text = @"初始显示";
        _contentLabel.backgroundColor = [UIColor orangeColor];
        _contentLabel.textColor = [UIColor whiteColor];
        _contentLabel.textAlignment = NSTextAlignmentCenter;
        _contentLabel.frame = CGRectMake(0, 50, 300, 30);
        
        [self addSubview:_contentLabel];
        
        
        self.button = [UIButton new];
        [_button setTitle:@"打印" forState:UIControlStateNormal];
        [_button setFrame:CGRectMake(0, 100, 60, 30)];
        [_button setBackgroundColor:[UIColor blueColor]];
        [_button addTarget:self action:@selector(printButtonClick) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:_button];
        
    }
    return self;
}

- (void)printButtonClick
{
    if (_delegate != nil && [_delegate respondsToSelector:@selector(print)]) {
        [_delegate print];
    }
}

- (void)printOnView:(Paper *)paper
{
    NSLog(@"paper: %@",paper.content);
    self.contentLabel.text = paper.content;
   
}



@end
