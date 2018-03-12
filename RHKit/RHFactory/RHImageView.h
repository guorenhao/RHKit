//
//  RHImageView.h
//  RHKit
//
//  Created by 郭人豪 on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RHImageView : UIImageView

/**
 对象方法创建对象
 
 @param frame     frame
 @param image     图片
 @param mode      图片呈现模式
 @param tag       tag值
 @param target    监听对象
 @param tapAction 事件方法
 @return          imageView 对象
 */
- (instancetype)initWithFrame:(CGRect)frame image:(nullable UIImage *)image contentMode:(UIViewContentMode)mode tag:(NSInteger)tag target:(nullable id)target tapAction:(nullable SEL)tapAction;

/**
 类方法快速创建对象
 
 @param frame     frame
 @param image     图片
 @param mode      图片呈现模式
 @param tag       tag值
 @param target    监听对象
 @param tapAction 事件方法
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithFrame:(CGRect)frame image:(nullable UIImage *)image contentMode:(UIViewContentMode)mode tag:(NSInteger)tag target:(nullable id)target tapAction:(nullable SEL)tapAction;

/**
 类方法快速创建对象
 
 @param frame     frame
 @param image     图片
 @param mode      图片呈现模式
 @param target    监听对象
 @param tapAction 事件方法
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithFrame:(CGRect)frame image:(nullable UIImage *)image contentMode:(UIViewContentMode)mode target:(nullable id)target tapAction:(nullable SEL)tapAction;

/**
 类方法快速创建对象
 
 @param frame     frame
 @param image     图片
 @param target    监听对象
 @param tapAction 事件方法
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithFrame:(CGRect)frame image:(nullable UIImage *)image target:(nullable id)target tapAction:(nullable SEL)tapAction;

/**
 类方法快速创建对象
 
 @param frame     frame
 @param mode      图片呈现模式
 @param target    监听对象
 @param tapAction 事件方法
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithFrame:(CGRect)frame contentMode:(UIViewContentMode)mode target:(id)target tapAction:(SEL)tapAction;

/**
 类方法快速创建对象
 
 @param frame     frame
 @param image     图片
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithFrame:(CGRect)frame image:(nullable UIImage *)image;

/**
 类方法快速创建对象
 
 @param frame     frame
 @param mode      图片呈现模式
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithFrame:(CGRect)frame contentMode:(UIViewContentMode)mode;

#pragma mark - no frame

/**
 类方法快速创建对象
 
 @param image     图片
 @param mode      图片呈现模式
 @param tag       tag值
 @param target    监听对象
 @param tapAction 事件方法
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithImage:(nullable UIImage *)image contentMode:(UIViewContentMode)mode tag:(NSInteger)tag target:(nullable id)target tapAction:(nullable SEL)tapAction;

/**
 类方法快速创建对象
 
 @param image     图片
 @param mode      图片呈现模式
 @param target    监听对象
 @param tapAction 事件方法
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithImage:(nullable UIImage *)image contentMode:(UIViewContentMode)mode target:(nullable id)target tapAction:(nullable SEL)tapAction;

/**
 类方法快速创建对象
 
 @param image     图片
 @param target    监听对象
 @param tapAction 事件方法
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithImage:(nullable UIImage *)image target:(nullable id)target tapAction:(nullable SEL)tapAction;

/**
 类方法快速创建对象
 
 @param mode      图片呈现模式
 @param target    监听对象
 @param tapAction 事件方法
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithContentMode:(UIViewContentMode)mode target:(id)target tapAction:(SEL)tapAction;

/**
 类方法快速创建对象
 
 @param image     图片
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithImage:(nullable UIImage *)image;

/**
 类方法快速创建对象
 
 @param mode      图片呈现模式
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithContentMode:(UIViewContentMode)mode;


@end

NS_ASSUME_NONNULL_END

