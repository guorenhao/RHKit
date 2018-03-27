//
//  RHView.h
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RHView : UIView

/**
 对象方法创建对象
 
 @param frame    frame
 @param bgColor  背景颜色
 @return         view对象
 */
- (instancetype)initWithFrame:(CGRect)frame bgColor:(UIColor *)bgColor;

/**
 类方法快速创建对象
 
 @param frame    frame
 @param bgColor  背景颜色
 @return         view对象
 */
+ (RHView *)viewWithFrame:(CGRect)frame bgColor:(UIColor *)bgColor;

/**
 类方法快速创建对象
 
 @param bgColor  背景颜色
 @return         view对象
 */
+ (RHView *)viewWithBgColor:(UIColor *)bgColor;
@end

NS_ASSUME_NONNULL_END

