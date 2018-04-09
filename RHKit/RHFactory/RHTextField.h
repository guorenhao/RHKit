//
//  RHTextField.h
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RHTextField : UITextField

/**
 对象方法创建对象

 @param frame         frame
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @param secureEntry   密码输入
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
- (instancetype)initWithFrame:(CGRect)frame placeholder:(nullable NSString *)placeholder font:(nullable UIFont *)font textColor:(nullable UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry target:(nullable id)target action:(nullable SEL)action;

#pragma mark - frame and action

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @param secureEntry   密码输入
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @param font          字体字号
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param frame         frame
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @param secureEntry   密码输入
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param frame         frame
 @param font          字体字号
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font target:(nullable id)target action:(nullable SEL)action;

#pragma mark - frame and no action

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @param secureEntry   密码输入
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry;

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType;

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor;

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @param font          字体字号
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font;

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder;

/**
 类方法创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @param secureEntry   密码输入
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry;

/**
 类方法创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType;

/**
 类方法创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 类方法创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor;

/**
 类方法创建对象
 
 @param frame         frame
 @param font          字体字号
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font;

#pragma mark - no frame and action

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @param secureEntry   密码输入
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param font          字体字号
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithTarget:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @param secureEntry   密码输入
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font textColor:(UIColor *)textColor target:(nullable id)target action:(nullable SEL)action;

/**
 类方法创建对象
 
 @param font          字体字号
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font target:(nullable id)target action:(nullable SEL)action;

#pragma mark - no frame and no action

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @param secureEntry   密码输入
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry;

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType;

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor;

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param font          字体字号
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font;

/**
 类方法创建对象
 
 @param placeholder   占位符
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder;

/**
 类方法创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @param secureEntry   密码输入
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry;

/**
 类方法创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType;

/**
 类方法创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 类方法创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font textColor:(UIColor *)textColor;

/**
 类方法创建对象
 
 @param font          字体字号
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font;


@end

NS_ASSUME_NONNULL_END
