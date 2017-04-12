//
//  MVPView.h
//  PrintDemo
//
//  Created by 张泽 on 2017/3/7.
//  Copyright © 2017年 张泽. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MVPViewDelegate <NSObject>

- (void)printOnView;

@end

@interface MVPView : UIView
@property(nonatomic, weak) id<MVPViewDelegate> delegate;

- (void)print:(NSString *)string;

@end
