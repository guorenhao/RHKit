//
//  RHButton.h
//  RHKit
//
//  Created by 郭人豪 on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RHButton : UIButton

/**
 对象方法创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitle      选中状态文字
 @param selectTitleColor 选中状态文字颜色
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor selectTitle:(NSString *)selectTitle selectTitleColor:(UIColor *)selectTitleColor font:(UIFont *)font target:(nullable id)target action:(SEL)action;
/**
 对象方法创建对象
 
 @param frame            frame
 @param image            普通状态图片
 @param selectImage      选中状态图片
 @param bgImage          普通状态背景图片
 @param bgSelectImage    选中状态背景图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
- (instancetype)initWithFrame:(CGRect)frame image:(nullable UIImage *)image selectImage:(nullable UIImage *)selectImage bgImage:(nullable UIImage *)bgImage bgSelectImage:(nullable UIImage *)bgSelectImage target:(nullable id)target action:(SEL)action;

#pragma mark - 文字

/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitle      选中状态文字
 @param selectTitleColor 选中状态文字颜色
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor selectTitle:(NSString *)selectTitle selectTitleColor:(UIColor *)selectTitleColor font:(UIFont *)font target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitle      选中状态文字
 @param selectTitleColor 选中状态文字颜色
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor selectTitle:(NSString *)selectTitle selectTitleColor:(UIColor *)selectTitleColor target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param selectTitle      选中状态文字
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title selectTitle:(NSString *)selectTitle font:(UIFont *)font target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param selectTitle      选中状态文字
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title selectTitle:(NSString *)selectTitle target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitleColor 选中状态文字颜色
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor selectTitleColor:(UIColor *)selectTitleColor font:(UIFont *)font target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitleColor 选中状态文字颜色
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor selectTitleColor:(UIColor *)selectTitleColor target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title target:(nullable id)target action:(SEL)action;

#pragma mark - 文字 no frame

/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitle      选中状态文字
 @param selectTitleColor 选中状态文字颜色
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor selectTitle:(NSString *)selectTitle selectTitleColor:(UIColor *)selectTitleColor font:(UIFont *)font target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitle      选中状态文字
 @param selectTitleColor 选中状态文字颜色
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor selectTitle:(NSString *)selectTitle selectTitleColor:(UIColor *)selectTitleColor target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param selectTitle      选中状态文字
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title selectTitle:(NSString *)selectTitle font:(UIFont *)font target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param selectTitle      选中状态文字
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title selectTitle:(NSString *)selectTitle target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitleColor 选中状态文字颜色
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor selectTitleColor:(UIColor *)selectTitleColor font:(UIFont *)font target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitleColor 选中状态文字颜色
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor selectTitleColor:(UIColor *)selectTitleColor target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title target:(nullable id)target action:(SEL)action;


#pragma mark - 图片

/**
 类方法快速创建对象
 
 @param frame            frame
 @param image            普通状态图片
 @param selectImage      选中状态图片
 @param bgImage          普通状态背景图片
 @param bgSelectImage    选中状态背景图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame image:(nullable UIImage *)image selectImage:(nullable UIImage *)selectImage bgImage:(nullable UIImage *)bgImage bgSelectImage:(nullable UIImage *)bgSelectImage target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param frame            frame
 @param image            普通状态图片
 @param selectImage      选中状态图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame image:(nullable UIImage *)image selectImage:(nullable UIImage *)selectImage target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param frame            frame
 @param image            普通状态图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame image:(nullable UIImage *)image target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param frame            frame
 @param bgImage          普通状态背景图片
 @param bgSelectImage    选中状态背景图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame bgImage:(nullable UIImage *)bgImage bgSelectImage:(nullable UIImage *)bgSelectImage target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param frame            frame
 @param bgImage          普通状态背景图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame bgImage:(nullable UIImage *)bgImage target:(nullable id)target action:(SEL)action;

#pragma mark - 图片 no frame

/**
 类方法快速创建对象
 
 @param image            普通状态图片
 @param selectImage      选中状态图片
 @param bgImage          普通状态背景图片
 @param bgSelectImage    选中状态背景图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithImage:(nullable UIImage *)image selectImage:(nullable UIImage *)selectImage bgImage:(nullable UIImage *)bgImage bgSelectImage:(nullable UIImage *)bgSelectImage target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param image            普通状态图片
 @param selectImage      选中状态图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithImage:(nullable UIImage *)image selectImage:(nullable UIImage *)selectImage target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param image            普通状态图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithImage:(nullable UIImage *)image target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param bgImage          普通状态背景图片
 @param bgSelectImage    选中状态背景图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithBgImage:(nullable UIImage *)bgImage bgSelectImage:(nullable UIImage *)bgSelectImage target:(nullable id)target action:(SEL)action;
/**
 类方法快速创建对象
 
 @param bgImage          普通状态背景图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithBgImage:(nullable UIImage *)bgImage target:(nullable id)target action:(SEL)action;


@end

NS_ASSUME_NONNULL_END

