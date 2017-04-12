//
//  MVCView.h
//  PrintDemo
//
//  Created by 张泽 on 2017/3/5.
//  Copyright © 2017年 张泽. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Paper.h"


@protocol MVCViewDelegate <NSObject>

- (void)print;

@end

@interface MVCView : UIView

@property(nonatomic, weak) id<MVCViewDelegate> delegate;

-(void)printOnView:(Paper *)paper;

@end
