//
//  UIView+RHAdd.m
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "UIView+RHAdd.h"
#import <objc/runtime.h>

static char rh_indexPathKey;

@implementation UIView (RHAdd)

/* 位置标记 */
- (void)setIndexPath:(NSIndexPath *)indexPath {
    
    objc_setAssociatedObject(self, &rh_indexPathKey, indexPath, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSIndexPath *)indexPath {
    
    return objc_getAssociatedObject(self, &rh_indexPathKey);
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

@end

static char rh_colorsKey;
static char rh_locationsKey;
static char rh_startPointKey;
static char rh_endPointKey;

@implementation UIView (Gradient)

- (void)setColors:(NSArray *)colors {
    
    objc_setAssociatedObject(self, &rh_colorsKey, colors, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSArray *)colors {
    
    return objc_getAssociatedObject(self, &rh_colorsKey);
}

- (void)setLocations:(NSArray<NSNumber *> *)locations {
    
    objc_setAssociatedObject(self, &rh_locationsKey, locations, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSArray<NSNumber *> *)locations {
    
    return objc_getAssociatedObject(self, &rh_locationsKey);
}

- (void)setStartPoint:(CGPoint)startPoint {
    
    objc_setAssociatedObject(self, &rh_startPointKey, [NSValue valueWithCGPoint:startPoint], OBJC_ASSOCIATION_ASSIGN);
}

- (CGPoint)startPoint {
    
    return [objc_getAssociatedObject(self, &rh_startPointKey) CGPointValue];
}

- (void)setEndPoint:(CGPoint)endPoint {
    
    objc_setAssociatedObject(self, &rh_endPointKey, [NSValue valueWithCGPoint:endPoint], OBJC_ASSOCIATION_ASSIGN);
}

- (CGPoint)endPoint {
    
    return [objc_getAssociatedObject(self, &rh_endPointKey) CGPointValue];
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
+ (UIView *)viewWithGradientColors:(NSArray<UIColor *> *)colors locations:(NSArray<NSNumber *> *)locations startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint {
    
    UIView * view = [[self alloc] init];
    [view setGradientColors:colors locations:locations startPoint:startPoint endPoint:endPoint];
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

@end

@implementation UIView (RHFrame)


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
