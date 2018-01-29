//
//  UIView+RHAdd.m
//  RHKit
//
//  Created by 郭人豪 on 2017/5/12.
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
