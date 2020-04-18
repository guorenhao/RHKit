//
//  UIColor+RHAdd.h
//  RHKit
//
//  Created by Abner_G on 2017/5/9.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class UIColorAttribute;
@interface UIColor (RHAdd)

/**
 创建随机色
 
 @return 随机色
 */
+ (UIColor *)randomColor;

/**
 十六进制颜色
 
 @param hex   十六进制颜色
 @return      十六进制颜色
 */
+ (UIColor *)colorWithHex:(NSUInteger)hex;

/**
 十六进制颜色
 
 @param hex   十六进制颜色
 @param alpha 透明度
 @return      十六进制颜色
 */
+ (UIColor *)colorWithHex:(NSUInteger)hex alpha:(CGFloat)alpha;

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

#pragma mark - rgb

/// 获取颜色rgba属性
- (UIColorAttribute *)colorAttribute;

/// 颜色置为灰白色
- (UIColor *)gray;

@end
@interface UIColorAttribute : NSObject

@property (nonatomic, assign) CGFloat red;

@property (nonatomic, assign) CGFloat green;

@property (nonatomic, assign) CGFloat blue;

@property (nonatomic, assign) CGFloat alpha;

+ (instancetype)attributeWithColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
