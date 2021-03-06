//
//  UIView+RHAdd.m
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "UIView+RHAdd.h"
#import <objc/runtime.h>

static char rh_kIndexPath;
static char rh_kBorderColor;
static char rh_kBorderWidth;
static char rh_kCornerRadius;
static char rh_kMasksToBounds;

@implementation UIView (RHAdd)

/* 位置标记 */
- (void)setIndexPath:(NSIndexPath *)indexPath {
    
    objc_setAssociatedObject(self, &rh_kIndexPath, indexPath, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (NSIndexPath *)indexPath {
    
    return objc_getAssociatedObject(self, &rh_kIndexPath);
}
/* 边框颜色 */
- (void)setBorderColor:(UIColor *)borderColor {
    
    objc_setAssociatedObject(self, &rh_kBorderColor, borderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.layer.borderColor = borderColor.CGColor;
}
- (UIColor *)borderColor {
    
    return objc_getAssociatedObject(self, &rh_kBorderColor);
}
/* 边框宽度 */
- (void)setBorderWidth:(CGFloat)borderWidth {
    
    objc_setAssociatedObject(self, &rh_kBorderWidth, [NSNumber numberWithFloat:borderWidth], OBJC_ASSOCIATION_ASSIGN);
    self.layer.borderWidth = borderWidth;
}
- (CGFloat)borderWidth {
    
    return [objc_getAssociatedObject(self, &rh_kBorderWidth) floatValue];
}
/* 圆角半径 */
- (void)setCornerRadius:(CGFloat)cornerRadius {
    
    objc_setAssociatedObject(self, &rh_kCornerRadius, [NSNumber numberWithFloat:cornerRadius], OBJC_ASSOCIATION_ASSIGN);
    self.layer.cornerRadius = cornerRadius;
}
- (CGFloat)cornerRadius {
    
    return [objc_getAssociatedObject(self, &rh_kCornerRadius) floatValue];
}
/* 是否切除超出部分 */
- (void)setMasksToBounds:(BOOL)masksToBounds {
    
    objc_setAssociatedObject(self, &rh_kMasksToBounds, [NSNumber numberWithBool:masksToBounds], OBJC_ASSOCIATION_ASSIGN);
    self.layer.masksToBounds = masksToBounds;
}
- (BOOL)masksToBounds {
    
    return [objc_getAssociatedObject(self, &rh_kMasksToBounds) floatValue];
}

/// 底部安全区域
- (CGFloat)safeAreaBottom {
    
    CGFloat safeAreaBottom = 0;
    if (@available(iOS 11.0, *)) {
        
        safeAreaBottom = [UIApplication sharedApplication].delegate.window.safeAreaInsets.bottom;
    }
    return safeAreaBottom;
}

/**
 移除所有子视图
 */
- (void)removeAllSubviews {
    
    while (self.subviews.count) {
        
        [self.subviews.lastObject removeFromSuperview];
    }
}

/**
 移动到最上层
 */
- (void)goToFront {
    
    [self.superview bringSubviewToFront:self];
}

/**
 移动到最下层
 */
- (void)goToBack {
    
    [self.superview sendSubviewToBack:self];
}

/**
 设置旋转支点

 @param anchorPoint 支点
 */
- (void)setAnchorPoint:(CGPoint)anchorPoint {
    
    CGPoint oldOrigin = self.frame.origin;
    self.layer.anchorPoint = anchorPoint;
    CGPoint newOrigin = self.frame.origin;
    
    CGPoint transition;
    transition.x = newOrigin.x - oldOrigin.x;
    transition.y = newOrigin.y - oldOrigin.y;
    
    self.center = CGPointMake (self.center.x - transition.x, self.center.y - transition.y);
}

/**
 恢复旋转支点
 */
- (void)setDefaultAnchorPoint {
    
    [self setAnchorPoint:CGPointMake(0.5f, 0.5f)];
}

static char rh_kColors;
static char rh_kLocations;
static char rh_kStartPoint;
static char rh_kEndPoint;

#pragma mark - Gradient

- (void)setColors:(NSArray *)colors {
    
    objc_setAssociatedObject(self, &rh_kColors, colors, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSArray *)colors {
    
    return objc_getAssociatedObject(self, &rh_kColors);
}

- (void)setLocations:(NSArray<NSNumber *> *)locations {
    
    objc_setAssociatedObject(self, &rh_kLocations, locations, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSArray<NSNumber *> *)locations {
    
    return objc_getAssociatedObject(self, &rh_kLocations);
}

- (void)setStartPoint:(CGPoint)startPoint {
    
    objc_setAssociatedObject(self, &rh_kStartPoint, [NSValue valueWithCGPoint:startPoint], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGPoint)startPoint {
    
    return [objc_getAssociatedObject(self, &rh_kStartPoint) CGPointValue];
}

- (void)setEndPoint:(CGPoint)endPoint {
    
    objc_setAssociatedObject(self, &rh_kEndPoint, [NSValue valueWithCGPoint:endPoint], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGPoint)endPoint {
    
    return [objc_getAssociatedObject(self, &rh_kEndPoint) CGPointValue];
}

+ (Class)layerClass {
    
    return CAGradientLayer.class;
}

/**
 类方法快速创建对象
 
 @param colors     渐变颜色数组
 @param locations  颜色分割位置
 @param startPoint 开始点
 @param endPoint   结束点
 @return           view对象
 */
+ (instancetype)viewWithGradientColors:(NSArray<UIColor *> *)colors locations:(NSArray<NSNumber *> *)locations startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint {
    
    UIView * view = [[self alloc] init];
    [view setGradientColors:colors locations:locations startPoint:startPoint endPoint:endPoint];
    return view;
}

/// 类方法快速创建对象
/// @param shadowColor   阴影颜色
/// @param shadowOffset  阴影偏移
/// @param shadowOpacity 阴影透明度
/// @param shadowRadius  阴影半径（宽度）
+ (instancetype)viewWithShadowColor:(UIColor *)shadowColor shadowOffset:(CGSize)shadowOffset shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius {
    
    UIView * view = [[self alloc] init];
    [view setShadowColor:shadowColor shadowOffset:shadowOffset shadowOpacity:shadowOpacity shadowRadius:shadowRadius];
    return view;
}

/// 类方法快速创建对象
/// @param shadowColor   阴影颜色
/// @param shadowOffset  阴影偏移
/// @param shadowOpacity 阴影透明度
/// @param shadowRadius  阴影半径（宽度）
/// @param cornerRadius  阴影圆角半径
+ (instancetype)viewWithShadowColor:(UIColor *)shadowColor shadowOffset:(CGSize)shadowOffset shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius cornerRadius:(CGFloat)cornerRadius {
    
    UIView * view = [[self alloc] init];
    [view setShadowColor:shadowColor shadowOffset:shadowOffset shadowOpacity:shadowOpacity shadowRadius:shadowRadius cornerRadius:cornerRadius];
    return view;
}

/**
 设置渐变色
 
 @param colors     渐变颜色数组
 @param locations  颜色分割位置
 @param startPoint 开始点
 @param endPoint   结束点
 */
- (void)setGradientColors:(NSArray<UIColor *> *)colors locations:(NSArray<NSNumber *> *)locations startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint {
    
    NSMutableArray * colorArr = [NSMutableArray new];
    for (UIColor * color in colors) {
        
        [colorArr addObject:(__bridge id)color.CGColor];
    }
    self.colors = [colorArr copy];
    self.locations = locations;
    self.startPoint = startPoint;
    self.endPoint = endPoint;
    if ([self.layer isKindOfClass:CAGradientLayer.class]) {
        
        CAGradientLayer * layer = (CAGradientLayer *)self.layer;
        layer.colors = self.colors;
        // 设置渐变方向(0~1)
        layer.startPoint = self.startPoint;
        layer.endPoint = self.endPoint;
        // 设置渐变色的起始位置和终止位置(颜色的分割点)
        layer.locations = self.locations;
        layer.borderWidth = 0.0;
    }
}

/// 设置阴影
/// @param shadowColor   阴影颜色
/// @param shadowOffset  阴影偏移
/// @param shadowOpacity 阴影透明度
/// @param shadowRadius  阴影半径（宽度）
- (void)setShadowColor:(UIColor *)shadowColor shadowOffset:(CGSize)shadowOffset shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius {
    
    self.layer.masksToBounds = NO;
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowOffset = shadowOffset;
    self.layer.shadowOpacity = shadowOpacity;
    self.layer.shadowRadius = shadowRadius;
}

- (void)setShadowColor:(UIColor *)shadowColor shadowOffset:(CGSize)shadowOffset shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius cornerRadius:(CGFloat)cornerRadius {
    
    self.layer.masksToBounds = NO;
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowOffset = shadowOffset;
    self.layer.shadowOpacity = shadowOpacity;
    self.layer.shadowRadius = shadowRadius;
    self.layer.cornerRadius = cornerRadius;
}

#pragma mark - Animation

/// 淡入动画
/// @param duration   动画时长
/// @param completion 动画完成回调
- (void)fadeInWithDuration:(NSTimeInterval)duration completion:(void (^)(BOOL))completion {
    
    self.alpha = 0.0;
    __weak typeof(self) weakSelf = self;
    [UIView animateWithDuration:duration animations:^{
        
        __strong typeof(weakSelf) strongSelf = weakSelf;
        strongSelf.alpha = 1.0;
    } completion:completion];
}

/// 淡出动画
/// @param duration   动画时长
/// @param completion 动画完成回调
- (void)fadeOutWithDuration:(NSTimeInterval)duration completion:(void (^)(BOOL))completion {
    
    __weak typeof(self) weakSelf = self;
    [UIView animateWithDuration:duration animations:^{
        
        __strong typeof(weakSelf) strongSelf = weakSelf;
        strongSelf.alpha = 0.0;
    } completion:completion];
}

#pragma mark - Frame

/* 最小x值 */
- (CGFloat)minX {
    
    return self.frame.origin.x;
}

- (void)setMinX:(CGFloat)minX {
    
    CGRect frame = self.frame;
    frame.origin.x = minX;
    self.frame = frame;
}

/* 最大x值 */
- (CGFloat)maxX {
    
    return self.frame.origin.x + self.frame.size.width;
}

/* 最小y值 */

- (CGFloat)minY {
    
    return self.frame.origin.y;
}

- (void)setMinY:(CGFloat)minY {
    
    CGRect frame = self.frame;
    frame.origin.y = minY;
    self.frame = frame;
}

/* 最大y值 */
- (CGFloat)maxY {
    
    return self.frame.origin.y + self.frame.size.height;
}

/* 宽 */
- (CGFloat)width {
    
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

/* 高 */
- (CGFloat)height {
    
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

/* x轴中心 */
- (CGFloat)centerX {
    
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX {
    
    self.center = CGPointMake(centerX, self.center.y);
}

/* y轴中心 */
- (CGFloat)centerY {
    
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
    
    self.center = CGPointMake(self.center.x, centerY);
}

/* 起始点 */
- (CGPoint)origin {
    
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin {
    
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

/* 尺寸 */
- (CGSize)size {
    
    return self.frame.size;
}

- (void)setSize:(CGSize)size {
    
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}


@end
