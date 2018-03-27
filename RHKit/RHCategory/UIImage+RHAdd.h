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
 拉伸图片到指定尺寸
 
 @param newSize 要拉伸的尺寸
 @return        拉伸后的图片
 */
- (UIImage *)scaleToSize:(CGSize)newSize;

@end

NS_ASSUME_NONNULL_END
