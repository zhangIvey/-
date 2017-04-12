//
//  MVVMView.h
//  PrintDemo
//
//  Created by yaoln on 2017/3/28.
//  Copyright © 2017年 张泽. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FBKVOController/FBKVOController.h"
#import "FBKVOController/NSObject+FBKVOController.h"
#import "MVVMViewModel.h"

@interface MVVMView : UIView

@property(nonatomic, strong) MVVMViewModel *viewModel;

- (void)setWithViewModel:(MVVMViewModel *)viewModelTemp;

@end
