//
//  MVPPresenter.h
//  PrintDemo
//
//  Created by 张泽 on 2017/3/7.
//  Copyright © 2017年 张泽. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPPaperModel.h"
#import "MVPView.h"

@interface MVPPresenter : NSObject <MVPViewDelegate>

@property(nonatomic, strong) MVPView *mvpView;
@property(nonatomic, strong) MVPPaperModel *mvpModel;


- (void)printTask;

@end
