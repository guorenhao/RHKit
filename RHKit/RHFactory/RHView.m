//
//  RHView.m
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "RHView.h"

@implementation RHView

/**
 对象方法创建对象
 
 @param frame    frame
 @param bgColor  背景颜色
 @return         view对象
 */
- (instancetype)initWithFrame:(CGRect)frame bgColor:(UIColor *)bgColor {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = bgColor;
    }
    return self;
}

/**
 类方法快速创建对象
 
 @param frame    frame
 @param bgColor  背景颜色
 @return         view对象
 */
+ (RHView *)viewWithFrame:(CGRect)frame bgColor:(UIColor *)bgColor {
    
    RHView * view = [[RHView alloc] initWithFrame:frame bgColor:bgColor];
    return view;
}

/**
 类方法快速创建对象
 
 @param bgColor  背景颜色
 @return         view对象
 */
+ (RHView *)viewWithBgColor:(UIColor *)bgColor {
    
    RHView * view = [[RHView alloc] initWithFrame:CGRectZero bgColor:bgColor];
    return view;
}









@end

