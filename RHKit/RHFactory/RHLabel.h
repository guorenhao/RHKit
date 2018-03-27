//
//  RHLabel.h
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RHLabel : UILabel

/**
 对象方法创建对象
 
 @param frame         frame
 @param text          文字内容
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param lines         字体行数
 @return              label 对象
 */
- (instancetype)initWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)lines;

/**
 类方法快速创建对象
 
 @param frame         frame
 @param text          文字内容
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param lines         字体行数
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)lines;
/**
 类方法快速创建对象
 
 @param frame         frame
 @param text          文字内容
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment;
/**
 类方法快速创建对象
 
 @param frame         frame
 @param text          文字内容
 @param font          字体字号
 @param textColor     字体颜色
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor;
/**
 类方法快速创建对象
 
 @param frame         frame
 @param text          文字内容
 @param font          字体字号
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font;
/**
 类方法快速创建对象
 
 @param frame         frame
 @param text          文字内容
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame text:(NSString *)text;
/**
 类方法快速创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param lines         字体行数
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)lines;
/**
 类方法快速创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment;
/**
 类方法快速创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor;
/**
 类方法快速创建对象
 
 @param frame         frame
 @param font          字体字号
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame font:(UIFont *)font;
/**
 类方法快速创建对象
 
 @param frame         frame
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param lines         字体行数
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)lines;
/**
 类方法快速创建对象
 
 @param frame         frame
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment;
/**
 类方法快速创建对象
 
 @param frame         frame
 @param textColor     字体颜色
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame textColor:(UIColor *)textColor;

/**
 类方法快速创建对象
 
 @param frame         frame
 @param bgColor       背景颜色
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame bgColor:(UIColor *)bgColor;

#pragma mark - no frame
/**
 类方法快速创建对象
 
 @param text          文字内容
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param lines         字体行数
 @return              label 对象
 */
+ (RHLabel *)labelWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)lines;
/**
 类方法快速创建对象
 
 @param text          文字内容
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              label 对象
 */
+ (RHLabel *)labelWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment;
/**
 类方法快速创建对象
 
 @param text          文字内容
 @param font          字体字号
 @param textColor     字体颜色
 @return              label 对象
 */
+ (RHLabel *)labelWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor;
/**
 类方法快速创建对象
 
 @param text          文字内容
 @param font          字体字号
 @return              label 对象
 */
+ (RHLabel *)labelWithtext:(NSString *)text font:(UIFont *)font;
/**
 类方法快速创建对象
 
 @param text          文字内容
 @return              label 对象
 */
+ (RHLabel *)labelWithText:(NSString *)text;
/**
 类方法快速创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param lines         字体行数
 @return              label 对象
 */
+ (RHLabel *)labelWithFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)lines;
/**
 类方法快速创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              label 对象
 */
+ (RHLabel *)labelWithFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment;
/**
 类方法快速创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @return              label 对象
 */
+ (RHLabel *)labelWithFont:(UIFont *)font textColor:(UIColor *)textColor;
/**
 类方法快速创建对象
 
 @param font          字体字号
 @return              label 对象
 */
+ (RHLabel *)labelWithFont:(UIFont *)font;
/**
 类方法快速创建对象
 
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param lines         字体行数
 @return              label 对象
 */
+ (RHLabel *)labelWithTextColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)lines;
/**
 类方法快速创建对象
 
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              label 对象
 */
+ (RHLabel *)labelWithTextColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment;
/**
 类方法快速创建对象
 
 @param textColor     字体颜色
 @return              label 对象
 */
+ (RHLabel *)labelWithTextColor:(UIColor *)textColor;

/**
 类方法快速创建对象
 
 @param bgColor       背景颜色
 @return              label 对象
 */
+ (RHLabel *)labelWithBgColor:(UIColor *)bgColor;

@end

NS_ASSUME_NONNULL_END

