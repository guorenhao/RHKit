//
//  UIImage+RHAdd.h
//  RHKit
//
//  Created by 郭人豪 on 2017/5/15.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (RHAdd)

/**
 纯色图片
 
 @param color 图片颜色
 @return      图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color;

/**
 带有圆角的纯色图片
 
 @param color   图片颜色
 @param radius  圆角
 @return        图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color radius:(CGFloat)radius;

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

@end

NS_ASSUME_NONNULL_END
