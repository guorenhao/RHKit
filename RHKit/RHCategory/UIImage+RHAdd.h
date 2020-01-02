//
//  UIImage+RHAdd.h
//  RHKit
//
//  Created by Abner_G on 2017/5/15.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (RHAdd)


/**
 带尺寸的纯色图片
 
 @param color  图片颜色
 @param size   图片尺寸
 @return       图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

/**
 定义尺寸的圆角纯色图片
 
 @param color  图片颜色
 @param size   图片尺寸
 @param radius 圆角
 @return       图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size radius:(CGFloat)radius;

/**
 通过view生成图片
 
 @param view  要生成图片的view
 @return      view图片
 */
+ (UIImage *)imageWithView:(UIView *)view;

/**
 通过view生成图片
 
 @param view   要生成图片的view
 @param opaque 是否不透明 NO-白底 YES-黑底
 @return       view图片
 */
+ (UIImage *)imageWithView:(UIView *)view opaque:(BOOL)opaque;

/**
 通过view生成图片
 
 @param view   要生成图片的view
 @param opaque 是否不透明 NO-白底 YES-黑底
 @param scale  屏幕密度 [UIScreen mainScreen].scale
 @return       view图片
 */
+ (UIImage *)imageWithView:(UIView *)view opaque:(BOOL)opaque scale:(CGFloat)scale;

/**
 高斯模糊图片
 
 @param image 原图
 @param blur  模糊系数 0~1
 @return      高斯模糊图片
 */
+ (UIImage *)gaussianBlurImageWithImage:(UIImage *)image blur:(CGFloat)blur;

/// 文字生成图片 默认居中
/// @param text      文字
/// @param size      生成的图片尺寸
/// @param font      文字字号
/// @param textColor 文字颜色
+ (UIImage *)imageWithText:(NSString *)text size:(CGSize)size font:(UIFont *)font textColor:(UIColor *)textColor;

/// 文字生成图片
/// @param text      文字
/// @param size      生成的图片尺寸
/// @param font      文字字号
/// @param textColor 文字颜色
/// @param isCenter  是否居中
+ (UIImage *)imageWithText:(NSString *)text size:(CGSize)size font:(UIFont *)font textColor:(UIColor *)textColor isCenter:(BOOL)isCenter;

/// 生成二维码图片
/// @param content 二维码内容
/// @param size    生成图片尺寸
+ (UIImage *)qrCodeImageWithContent:(NSString *)content size:(CGFloat)size;

/// 生成二维码图片
/// @param content      二维码内容
/// @param size         生成图片尺寸
/// @param centerImage  中间插入小图
/// @param centerRadius 中间插入小图圆角
+ (UIImage *)qrCodeImageWithContent:(NSString *)content size:(CGFloat)size centerImage:(nullable UIImage *)centerImage centerRadius:(CGFloat)centerRadius;
/**
 拉伸图片到指定尺寸
 
 @param newSize 要拉伸的尺寸
 @return        拉伸后的图片
 */
- (UIImage *)scaleToSize:(CGSize)newSize;

@end

NS_ASSUME_NONNULL_END
