//
//  MVPPresenter.m
//  PrintDemo
//
//  Created by 张泽 on 2017/3/7.
//  Copyright © 2017年 张泽. All rights reserved.
//

#import "MVPPresenter.h"

@interface MVPPresenter () 



@end

@implementation MVPPresenter

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)printTask
{
    [self.mvpView print:self.mvpModel.contents];
    
}


- (void)printOnView
{
    int number = arc4random()%10;
    _mvpModel.contents = [NSString stringWithFormat:@"%d",number];
    [self.mvpView print:_mvpModel.contents];
}



@end
