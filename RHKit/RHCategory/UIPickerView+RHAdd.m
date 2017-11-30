//
//  UIPickerView+RHAdd.m
//  RHKit
//
//  Created by 郭人豪 on 2017/10/18.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "UIPickerView+RHAdd.h"

@implementation UIPickerView (RHAdd)

/**
 修改分隔线颜色
 
 @param color 颜色
 */
- (void)changeSpearatorLineColor:(UIColor *)color {
    
    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        if (obj.frame.size.height < 1) {
            
            obj.backgroundColor = color;
        }
    }];
}


@end
