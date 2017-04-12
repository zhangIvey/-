//
//  MVVMViewModel.h
//  PrintDemo
//
//  Created by yaoln on 2017/3/28.
//  Copyright © 2017年 张泽. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVVMPaperModel.h"

@interface MVVMViewModel : NSObject

@property(nonatomic, strong) NSString *contentString;
@property(nonatomic, strong) MVVMPaperModel *paperModel;

- (void)setWithModel:(MVVMPaperModel *)model_temp;
- (void)updateinfo;

@end
