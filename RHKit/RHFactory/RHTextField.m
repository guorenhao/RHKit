//
//  RHTextField.m
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "RHTextField.h"

@implementation RHTextField

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
- (instancetype)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry target:(id)target action:(SEL)action {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        if (placeholder) {
            
            self.placeholder = placeholder;
        }
        if (font) {
            
            self.font = font;
        }
        if (textColor) {
            
            self.textColor = textColor;
        }
        self.textAlignment = textAlignment;
        self.keyboardType = keyboardType;
        self.secureTextEntry = secureEntry;
        if (target && action) {
            
            [self addTarget:target action:action forControlEvents:UIControlEventEditingChanged];
        }
    }
    return self;
}

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
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:placeholder font:font textColor:textColor textAlignment:textAlignment keyboardType:keyboardType secureEntry:secureEntry target:target action:action];
    return textField;
}

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
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:placeholder font:font textColor:textColor textAlignment:textAlignment keyboardType:keyboardType secureEntry:NO target:target action:action];
    return textField;
}

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
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:placeholder font:font textColor:textColor textAlignment:textAlignment keyboardType:UIKeyboardTypeDefault secureEntry:NO target:target action:action];
    return textField;
}

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
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:placeholder font:font textColor:textColor textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:target action:action];
    return textField;
}

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @param font          字体字号
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:placeholder font:font textColor:nil textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:target action:action];
    return textField;
}

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:placeholder font:nil textColor:nil textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:target action:action];
    return textField;
}

/**
 类方法创建对象
 
 @param frame         frame
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:nil font:nil textColor:nil textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:target action:action];
    return textField;
}

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
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:nil font:font textColor:textColor textAlignment:textAlignment keyboardType:keyboardType secureEntry:secureEntry target:target action:action];
    return textField;
}

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
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:nil font:font textColor:textColor textAlignment:textAlignment keyboardType:keyboardType secureEntry:NO target:target action:action];
    return textField;
}

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
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:nil font:font textColor:textColor textAlignment:textAlignment keyboardType:UIKeyboardTypeDefault secureEntry:NO target:target action:action];
    return textField;
}

/**
 类方法创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:nil font:font textColor:textColor textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:target action:action];
    return textField;
}

/**
 类方法创建对象
 
 @param frame         frame
 @param font          字体字号
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:nil font:font textColor:nil textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:target action:action];
    return textField;
}

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
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:placeholder font:font textColor:textColor textAlignment:textAlignment keyboardType:keyboardType secureEntry:secureEntry target:nil action:NULL];
    return textField;
}

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
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:placeholder font:font textColor:textColor textAlignment:textAlignment keyboardType:keyboardType secureEntry:NO target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:placeholder font:font textColor:textColor textAlignment:textAlignment keyboardType:UIKeyboardTypeDefault secureEntry:NO target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:placeholder font:font textColor:textColor textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @param font          字体字号
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:placeholder font:font textColor:nil textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param frame         frame
 @param placeholder   占位符
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:placeholder font:nil textColor:nil textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:nil action:NULL];
    return textField;
}

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
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:nil font:font textColor:textColor textAlignment:textAlignment keyboardType:keyboardType secureEntry:secureEntry target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:nil font:font textColor:textColor textAlignment:textAlignment keyboardType:keyboardType secureEntry:NO target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:nil font:font textColor:textColor textAlignment:textAlignment keyboardType:UIKeyboardTypeDefault secureEntry:NO target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param frame         frame
 @param font          字体字号
 @param textColor     字体颜色
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:nil font:font textColor:textColor textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param frame         frame
 @param font          字体字号
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFrame:(CGRect)frame font:(UIFont *)font {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:frame placeholder:nil font:font textColor:nil textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:nil action:NULL];
    return textField;
}

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
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:placeholder font:font textColor:textColor textAlignment:textAlignment keyboardType:keyboardType secureEntry:secureEntry target:target action:action];
    return textField;
}

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
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:placeholder font:font textColor:textColor textAlignment:textAlignment keyboardType:keyboardType secureEntry:NO target:target action:action];
    return textField;
}

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
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:placeholder font:font textColor:textColor textAlignment:textAlignment keyboardType:UIKeyboardTypeDefault secureEntry:NO target:target action:action];
    return textField;
}

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:placeholder font:font textColor:textColor textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:target action:action];
    return textField;
}

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param font          字体字号
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:placeholder font:font textColor:nil textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:target action:action];
    return textField;
}

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:placeholder font:nil textColor:nil textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:target action:action];
    return textField;
}

/**
 类方法创建对象
 
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithTarget:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:nil font:nil textColor:nil textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:target action:action];
    return textField;
}

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
+ (RHTextField *)textFieldWithFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:nil font:font textColor:textColor textAlignment:textAlignment keyboardType:keyboardType secureEntry:secureEntry target:target action:action];
    return textField;
}

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
+ (RHTextField *)textFieldWithFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:nil font:font textColor:textColor textAlignment:textAlignment keyboardType:keyboardType secureEntry:NO target:target action:action];
    return textField;
}

/**
 类方法创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:nil font:font textColor:textColor textAlignment:textAlignment keyboardType:UIKeyboardTypeDefault secureEntry:NO target:target action:action];
    return textField;
}

/**
 类方法创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font textColor:(UIColor *)textColor target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:nil font:font textColor:textColor textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:target action:action];
    return textField;
}

/**
 类方法创建对象
 
 @param font          字体字号
 @param target        监听对象
 @param action        事件方法
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font target:(nullable id)target action:(nullable SEL)action {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:nil font:font textColor:nil textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:target action:action];
    return textField;
}

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
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:placeholder font:font textColor:textColor textAlignment:textAlignment keyboardType:keyboardType secureEntry:secureEntry target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:placeholder font:font textColor:textColor textAlignment:textAlignment keyboardType:keyboardType secureEntry:NO target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:placeholder font:font textColor:textColor textAlignment:textAlignment keyboardType:UIKeyboardTypeDefault secureEntry:NO target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param font          字体字号
 @param textColor     字体颜色
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:placeholder font:font textColor:textColor textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param placeholder   占位符
 @param font          字体字号
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder font:(UIFont *)font {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:placeholder font:font textColor:nil textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param placeholder   占位符
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithPlaceholder:(NSString *)placeholder {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:placeholder font:nil textColor:nil textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @param secureEntry   密码输入
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType secureEntry:(BOOL)secureEntry {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:nil font:font textColor:textColor textAlignment:textAlignment keyboardType:keyboardType secureEntry:secureEntry target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @param keyboardType  键盘类型
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:nil font:font textColor:textColor textAlignment:textAlignment keyboardType:keyboardType secureEntry:NO target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @param textAlignment 字体位置
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:nil font:font textColor:textColor textAlignment:textAlignment keyboardType:UIKeyboardTypeDefault secureEntry:NO target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param font          字体字号
 @param textColor     字体颜色
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font textColor:(UIColor *)textColor {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:nil font:font textColor:textColor textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:nil action:NULL];
    return textField;
}

/**
 类方法创建对象
 
 @param font          字体字号
 @return              textField 对象
 */
+ (RHTextField *)textFieldWithFont:(UIFont *)font {
    
    RHTextField * textField = [[RHTextField alloc] initWithFrame:CGRectZero placeholder:nil font:font textColor:nil textAlignment:NSTextAlignmentLeft keyboardType:UIKeyboardTypeDefault secureEntry:NO target:nil action:NULL];
    return textField;
}


@end
