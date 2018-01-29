//
//  UIView+RHAdd.h
//  RHKit
//
//  Created by 郭人豪 on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (RHAdd)

/* 位置标记 */
@property (nonatomic, strong) NSIndexPath * indexPath;


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

@end

@interface UIView (RHFrame)

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
