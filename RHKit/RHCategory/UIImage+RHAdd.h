//
//  UIImage+RHAdd.h
//  RHKit
//
//  Created by Abner_G on 2017/5/15.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// 生成圆角图片
/// @param image        原图
/// @param cornerRadius 圆角半径
UIImage * _Nullable RHCreateRoundCornerImage(UIImage *image, CGFloat cornerRadius);

@interface UIImage (RHAdd)

#pragma mark - color image

/// 纯色图片
/// @param color 图片颜色
/// @param size  图片尺寸
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

/// 圆角纯色图片
/// @param color  图片颜色
/// @param size   图片尺寸
/// @param radius 圆角半径
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size radius:(CGFloat)radius;

#pragma mark - view image

/// view生成图片
/// @param view 要生成图片的view
+ (UIImage *)imageWithView:(UIView *)view;

/// view生成图片
/// @param view   要生成图片的view
/// @param opaque 是否不透明 NO-白底 YES-黑底
+ (UIImage *)imageWithView:(UIView *)view opaque:(BOOL)opaque;

/// view生成图片
/// @param view   要生成图片的view
/// @param opaque 是否不透明 NO-白底 YES-黑底
/// @param scale  屏幕密度 [UIScreen mainScreen].scale
+ (UIImage *)imageWithView:(UIView *)view opaque:(BOOL)opaque scale:(CGFloat)scale;

#pragma mark - text image

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

#pragma mark - qrcode image

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

/// 生成二维码图片
/// @param content      二维码内容
/// @param size         生成图片尺寸
/// @param centerImage  中间插入小图
/// @param centerSize   中间插入小图尺寸  default size/4
/// @param centerRadius 中间插入小图圆角
+ (UIImage *)qrCodeImageWithContent:(NSString *)content size:(CGFloat)size centerImage:(nullable UIImage *)centerImage centerSize:(CGFloat)centerSize centerRadius:(CGFloat)centerRadius;

#pragma mark - gaussianBlur image

/// 高斯模糊图片
/// @param image 原图
/// @param blur  模糊系数 0~1
+ (UIImage *)gaussianBlurImageWithImage:(UIImage *)image blur:(CGFloat)blur;

#pragma mark - scale

/// 拉伸图片到指定尺寸
/// @param newSize 要拉伸的尺寸
- (UIImage *)scaleToSize:(CGSize)newSize;

/// 裁剪图片
/// @param rect 裁剪区域
- (nullable UIImage *)tailorInRect:(CGRect)rect;

@end

NS_ASSUME_NONNULL_END
