//
//  NSAttributedString+RHAdd.h
//  RHKit
//
//  Created by Abner_G on 2020/1/5.
//  Copyright © 2020 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSAttributedString (RHAdd)

/// 属性字符串
/// @param string      字符串
/// @param font        字体
/// @param lineSpacing 行间距
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing;

/// 属性字符串
/// @param string        字符串
/// @param font          字体
/// @param lineBreakMode 换行打断模式
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font lineBreakMode:(NSLineBreakMode)lineBreakMode;

/// 属性字符串
/// @param string        字符串
/// @param font          字体
/// @param strokeWidth   重影宽
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font strokeWidth:(CGFloat)strokeWidth;

/// 属性字符串
/// @param string        字符串
/// @param font          字体
/// @param alignment     样式
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font alignment:(NSTextAlignment)alignment;

/// 属性字符串
/// @param string        字符串
/// @param font          字体
/// @param lineSpacing   行间距
/// @param lineBreakMode 换行打断模式
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing lineBreakMode:(NSLineBreakMode)lineBreakMode;

/// 属性字符串
/// @param string        字符串
/// @param font          字体
/// @param lineSpacing   行间距
/// @param strokeWidth   重影宽
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing strokeWidth:(CGFloat)strokeWidth;

/// 属性字符串
/// @param string        字符串
/// @param font          字体
/// @param lineSpacing   行间距
/// @param alignment     样式
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing alignment:(NSTextAlignment)alignment;

/// 属性字符串
/// @param string        字符串
/// @param font          字体
/// @param lineSpacing   行间距
/// @param strokeWidth   重影宽
/// @param alignment     样式
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing strokeWidth:(CGFloat)strokeWidth alignment:(NSTextAlignment)alignment;

/// 属性字符串
/// @param string        字符串
/// @param font          字体
/// @param lineSpacing   行间距
/// @param lineBreakMode 换行打断模式
/// @param strokeWidth   重影宽
/// @param alignment     样式
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing lineBreakMode:(NSLineBreakMode)lineBreakMode strokeWidth:(CGFloat)strokeWidth alignment:(NSTextAlignment)alignment;


@end

NS_ASSUME_NONNULL_END
