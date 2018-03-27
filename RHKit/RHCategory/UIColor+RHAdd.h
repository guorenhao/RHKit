//
//  UIColor+RHAdd.h
//  RHKit
//
//  Created by Abner_G on 2017/5/9.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (RHAdd)

/**
 创建随机色
 
 @return 随机色
 */
+ (UIColor *)randomColor;

/**
 十六进制颜色
 
 @param hexString 十六进制颜色字符串
 @return          十六进制颜色
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString;

/**
 十六进制颜色
 
 @param hexString  十六进制颜色字符串
 @param alpha      透明度
 @return           十六进制颜色
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;


@end

NS_ASSUME_NONNULL_END
