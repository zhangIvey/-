//
//  MVVMViewModel.m
//  PrintDemo
//
//  Created by yaoln on 2017/3/28.
//  Copyright © 2017年 张泽. All rights reserved.
//

#import "MVVMViewModel.h"

@implementation MVVMViewModel

#pragma mark - viewModel 和 model确定绑定关系

- (void)setWithModel:(MVVMPaperModel *)model_temp
{
    self.paperModel = model_temp;
    self.contentString = model_temp.contents;
}


#pragma mark - 展示内容进行更新
- (void)updateinfo
{
    int number = arc4random()*10;
    self.paperModel.contents = [NSString stringWithFormat:@"number = %d",number];
    self.contentString = self.paperModel.contents;
}

@end
