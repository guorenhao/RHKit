//
//  RHImageView.m
//  RHKit
//
//  Created by 郭人豪 on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "RHImageView.h"

#define ImageViewTag          0
#define ImageViewContentMode  UIViewContentModeScaleToFill
@implementation RHImageView

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
- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image contentMode:(UIViewContentMode)mode tag:(NSInteger)tag target:(id)target tapAction:(SEL)tapAction {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.tag = tag;
        self.contentMode = mode;
        self.image = image;
        if (target && tapAction) {
            
            self.userInteractionEnabled = YES;
            UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:target action:tapAction];
            [self addGestureRecognizer:tap];
        }
    }
    return self;
}

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
+ (RHImageView *)imageViewWithFrame:(CGRect)frame image:(UIImage *)image contentMode:(UIViewContentMode)mode tag:(NSInteger)tag target:(id)target tapAction:(SEL)tapAction {
    
    RHImageView * imageView = [[RHImageView alloc] initWithFrame:frame image:image contentMode:mode tag:tag target:target tapAction:tapAction];
    return imageView;
}

/**
 类方法快速创建对象
 
 @param frame     frame
 @param image     图片
 @param mode      图片呈现模式
 @param target    监听对象
 @param tapAction 事件方法
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithFrame:(CGRect)frame image:(UIImage *)image contentMode:(UIViewContentMode)mode target:(id)target tapAction:(SEL)tapAction {
    
    RHImageView * imageView = [[RHImageView alloc] initWithFrame:frame image:image contentMode:mode tag:ImageViewTag target:target tapAction:tapAction];
    return imageView;
}

/**
 类方法快速创建对象
 
 @param frame     frame
 @param image     图片
 @param target    监听对象
 @param tapAction 事件方法
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithFrame:(CGRect)frame image:(UIImage *)image target:(id)target tapAction:(SEL)tapAction {
    
    RHImageView * imageView = [[RHImageView alloc] initWithFrame:frame image:image contentMode:ImageViewContentMode tag:ImageViewTag target:target tapAction:tapAction];
    return imageView;
}

/**
 类方法快速创建对象
 
 @param frame     frame
 @param image     图片
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithFrame:(CGRect)frame image:(UIImage *)image {
    
    RHImageView * imageView = [[RHImageView alloc] initWithFrame:frame image:image contentMode:ImageViewContentMode tag:ImageViewTag target:nil tapAction:NULL];
    return imageView;
}

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
+ (RHImageView *)imageViewWithImage:(UIImage *)image contentMode:(UIViewContentMode)mode tag:(NSInteger)tag target:(id)target tapAction:(SEL)tapAction {
    
    RHImageView * imageView = [[RHImageView alloc] initWithFrame:CGRectZero image:image contentMode:mode tag:tag target:target tapAction:tapAction];
    return imageView;
}

/**
 类方法快速创建对象
 
 @param image     图片
 @param mode      图片呈现模式
 @param target    监听对象
 @param tapAction 事件方法
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithImage:(UIImage *)image contentMode:(UIViewContentMode)mode target:(id)target tapAction:(SEL)tapAction {
    
    RHImageView * imageView = [[RHImageView alloc] initWithFrame:CGRectZero image:image contentMode:mode tag:ImageViewTag target:target tapAction:tapAction];
    return imageView;
}

/**
 类方法快速创建对象
 
 @param image     图片
 @param target    监听对象
 @param tapAction 事件方法
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithImage:(UIImage *)image target:(id)target tapAction:(SEL)tapAction {
    
    RHImageView * imageView = [[RHImageView alloc] initWithFrame:CGRectZero image:image contentMode:ImageViewContentMode tag:ImageViewTag target:target tapAction:tapAction];
    return imageView;
}

/**
 类方法快速创建对象
 
 @param image     图片
 @return          imageView 对象
 */
+ (RHImageView *)imageViewWithImage:(UIImage *)image {
    
    RHImageView * imageView = [[RHImageView alloc] initWithFrame:CGRectZero image:image contentMode:ImageViewContentMode tag:ImageViewTag target:nil tapAction:NULL];
    return imageView;
}


@end

