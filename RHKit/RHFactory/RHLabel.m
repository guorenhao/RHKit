//
//  RHLabel.m
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "RHLabel.h"

#define  LabelFont       [UIFont systemFontOfSize:17]
#define  LabelTextColor  [UIColor blackColor]
@implementation RHLabel

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
- (instancetype)initWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)lines {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.text = text;
        self.font = font;
        self.textColor = textColor;
        self.textAlignment = textAlignment;
        self.numberOfLines = lines;
    }
    return self;
}

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
+ (RHLabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)lines {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:frame text:text font:font textColor:textColor textAlignment:textAlignment numberOfLines:lines];
    return label;
}
/**
 类方法快速创建对象
 
 @param frame         frame
 @param text          文字内容
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:frame text:text font:font textColor:textColor textAlignment:textAlignment numberOfLines:1];
    return label;
}
/**
 类方法快速创建对象
 
 @param frame         frame
 @param text          文字内容
 @param font          字体字号
 @param textColor     字体颜色
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:frame text:text font:font textColor:textColor textAlignment:NSTextAlignmentLeft numberOfLines:1];
    return label;
}
/**
 类方法快速创建对象
 
 @param frame         frame
 @param text          文字内容
 @param font          字体字号
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:frame text:text font:font textColor:LabelTextColor textAlignment:NSTextAlignmentLeft numberOfLines:1];
    return label;
}
/**
 类方法快速创建对象
 
 @param frame         frame
 @param text          文字内容
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame text:(NSString *)text {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:frame text:text font:LabelFont textColor:LabelTextColor textAlignment:NSTextAlignmentLeft numberOfLines:1];
    return label;
}
/**
 类方法快速创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param lines         字体行数
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)lines {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:frame text:@"" font:font textColor:textColor textAlignment:textAlignment numberOfLines:lines];
    return label;
}
/**
 类方法快速创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:frame text:@"" font:font textColor:textColor textAlignment:textAlignment numberOfLines:1];
    return label;
}
/**
 类方法快速创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:frame text:@"" font:font textColor:textColor textAlignment:NSTextAlignmentLeft numberOfLines:1];
    return label;
}
/**
 类方法快速创建对象
 
 @param frame         frame
 @param font          字体字号
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame font:(UIFont *)font {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:frame text:@"" font:font textColor:LabelTextColor textAlignment:NSTextAlignmentLeft numberOfLines:1];
    return label;
}
/**
 类方法快速创建对象
 
 @param frame         frame
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param lines         字体行数
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)lines {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:frame text:@"" font:LabelFont textColor:textColor textAlignment:textAlignment numberOfLines:lines];
    return label;
}
/**
 类方法快速创建对象
 
 @param frame         frame
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:frame text:@"" font:LabelFont textColor:textColor textAlignment:textAlignment numberOfLines:1];
    return label;
}
/**
 类方法快速创建对象
 
 @param frame         frame
 @param textColor     字体颜色
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame textColor:(UIColor *)textColor {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:frame text:@"" font:LabelFont textColor:textColor textAlignment:NSTextAlignmentLeft numberOfLines:1];
    return label;
}

/**
 类方法快速创建对象
 
 @param frame         frame
 @param bgColor       背景颜色
 @return              label 对象
 */
+ (RHLabel *)labelWithFrame:(CGRect)frame bgColor:(UIColor *)bgColor {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:frame];
    label.backgroundColor = bgColor;
    return label;
}

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
+ (RHLabel *)labelWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)lines {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:CGRectZero text:text font:font textColor:textColor textAlignment:textAlignment numberOfLines:lines];
    return label;
}
/**
 类方法快速创建对象
 
 @param text          文字内容
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              label 对象
 */
+ (RHLabel *)labelWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:CGRectZero text:text font:font textColor:textColor textAlignment:textAlignment numberOfLines:1];
    return label;
}
/**
 类方法快速创建对象
 
 @param text          文字内容
 @param font          字体字号
 @param textColor     字体颜色
 @return              label 对象
 */
+ (RHLabel *)labelWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:CGRectZero text:text font:font textColor:textColor textAlignment:NSTextAlignmentLeft numberOfLines:1];
    return label;
}
/**
 类方法快速创建对象
 
 @param text          文字内容
 @param font          字体字号
 @return              label 对象
 */
+ (RHLabel *)labelWithText:(NSString *)text font:(UIFont *)font {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:CGRectZero text:text font:font textColor:LabelTextColor textAlignment:NSTextAlignmentLeft numberOfLines:1];
    return label;
}
/**
 类方法快速创建对象
 
 @param text          文字内容
 @return              label 对象
 */
+ (RHLabel *)labelWithText:(NSString *)text {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:CGRectZero text:text font:LabelFont textColor:LabelTextColor textAlignment:NSTextAlignmentLeft numberOfLines:1];
    return label;
}
/**
 类方法快速创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param lines         字体行数
 @return              label 对象
 */
+ (RHLabel *)labelWithFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)lines {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:CGRectZero text:@"" font:font textColor:textColor textAlignment:textAlignment numberOfLines:lines];
    return label;
}
/**
 类方法快速创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              label 对象
 */
+ (RHLabel *)labelWithFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:CGRectZero text:@"" font:font textColor:textColor textAlignment:textAlignment numberOfLines:1];
    return label;
}
/**
 类方法快速创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @return              label 对象
 */
+ (RHLabel *)labelWithFont:(UIFont *)font textColor:(UIColor *)textColor {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:CGRectZero text:@"" font:font textColor:textColor textAlignment:NSTextAlignmentLeft numberOfLines:1];
    return label;
}
/**
 类方法快速创建对象
 
 @param font          字体字号
 @return              label 对象
 */
+ (RHLabel *)labelWithFont:(UIFont *)font {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:CGRectZero text:@"" font:font textColor:LabelTextColor textAlignment:NSTextAlignmentLeft numberOfLines:1];
    return label;
}
/**
 类方法快速创建对象
 
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param lines         字体行数
 @return              label 对象
 */
+ (RHLabel *)labelWithTextColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)lines {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:CGRectZero text:@"" font:LabelFont textColor:textColor textAlignment:textAlignment numberOfLines:lines];
    return label;
}
/**
 类方法快速创建对象
 
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              label 对象
 */
+ (RHLabel *)labelWithTextColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:CGRectZero text:@"" font:LabelFont textColor:textColor textAlignment:textAlignment numberOfLines:1];
    return label;
}
/**
 类方法快速创建对象
 
 @param textColor     字体颜色
 @return              label 对象
 */
+ (RHLabel *)labelWithTextColor:(UIColor *)textColor {
    
    RHLabel * label = [[RHLabel alloc] initWithFrame:CGRectZero text:@"" font:LabelFont textColor:textColor textAlignment:NSTextAlignmentLeft numberOfLines:1];
    return label;
}

/**
 类方法快速创建对象
 
 @param bgColor       背景颜色
 @return              label 对象
 */
+ (RHLabel *)labelWithBgColor:(UIColor *)bgColor {
    
    RHLabel * label = [[RHLabel alloc] init];
    label.backgroundColor = bgColor;
    return label;
}


@end

