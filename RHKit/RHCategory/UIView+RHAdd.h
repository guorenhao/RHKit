//
//  UIView+RHAdd.h
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (RHAdd)

/* 位置标记 */
@property (nonatomic, strong) NSIndexPath * indexPath;
/* 底部安全区域 */
@property (nonatomic, assign, readonly) CGFloat safeAreaBottom;

/**
 移除所有子视图
 */
- (void)removeAllSubviews;

/**
 移动到最上层
 */
- (void)goToFront;

/**
 移动到最下层
 */
- (void)goToBack;

/**
 设置旋转支点
 
 @param anchorPoint 支点
 */
- (void)setAnchorPoint:(CGPoint)anchorPoint;

/**
 恢复旋转支点
 */
- (void)setDefaultAnchorPoint;

#pragma mark - Gradient

/* 渐变颜色数组 数组元素：CGColorRef */
@property (nonatomic, copy) NSArray * colors;
/* 颜色分割位置 */
@property (nonatomic, copy) NSArray<NSNumber *> * locations;
/* 渐变色开始点 */
@property (nonatomic, assign) CGPoint startPoint;
/* 渐变色结束点 */
@property (nonatomic, assign) CGPoint endPoint;

/**
 类方法快速创建对象
 
 @param colors     渐变颜色数组
 @param locations  颜色分割位置
 @param startPoint 开始点
 @param endPoint   结束点
 @return           view对象
 */
+ (instancetype)viewWithGradientColors:(NSArray<UIColor *> *)colors locations:(NSArray<NSNumber *> *)locations startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint;

/// 类方法快速创建对象
/// @param shadowColor   阴影颜色
/// @param shadowOffset  阴影偏移
/// @param shadowOpacity 阴影透明度
/// @param shadowRadius  阴影半径（宽度）
+ (instancetype)viewWithShadowColor:(UIColor *)shadowColor shadowOffset:(CGSize)shadowOffset shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius;

/**
 设置渐变色
 
 @param colors     渐变颜色数组
 @param locations  颜色分割位置
 @param startPoint 开始点
 @param endPoint   结束点
 */
- (void)setGradientColors:(NSArray<UIColor *> *)colors locations:(NSArray<NSNumber *> *)locations startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint;

/// 设置阴影（背景不能是透明色，否则将不显示阴影）
/// @param shadowColor   阴影颜色
/// @param shadowOffset  阴影偏移
/// @param shadowOpacity 阴影透明度
/// @param shadowRadius  阴影半径（宽度）
- (void)setShadowColor:(UIColor *)shadowColor shadowOffset:(CGSize)shadowOffset shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius;

#pragma mark - Animation

/// 淡入动画
/// @param duration   动画时长
/// @param completion 动画完成回调
- (void)fadeInWithDuration:(NSTimeInterval)duration completion:(nullable void (^)(BOOL finished))completion;

/// 淡出动画
/// @param duration   动画时长
/// @param completion 动画完成回调
- (void)fadeOutWithDuration:(NSTimeInterval)duration completion:(nullable void (^)(BOOL finished))completion;


#pragma mark - Frame

/* 最小x值 frame.origin.x */
@property (nonatomic) CGFloat minX;
/* 最大x值 frame.origin.x + frame.size.width */
@property (nonatomic, readonly) CGFloat maxX;
/* 最小y值 frame.origin.y */
@property (nonatomic) CGFloat minY;
/* 最大y值 frame.origin.y + frame.size.height */
@property (nonatomic, readonly) CGFloat maxY;
/* 宽度 frame.size.width */
@property (nonatomic) CGFloat width;
/* 高度 frame.size.height */
@property (nonatomic) CGFloat height;
/* x轴中心位置 center.x */
@property (nonatomic) CGFloat centerX;
/* y轴中心位置 center.y */
@property (nonatomic) CGFloat centerY;
/* 起始点位置 frame.origin */
@property (nonatomic) CGPoint origin;
/* 尺寸 frame.size */
@property (nonatomic) CGSize  size;

@end

NS_ASSUME_NONNULL_END
