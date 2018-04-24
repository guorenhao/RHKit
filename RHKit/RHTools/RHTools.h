//
//  RHTools.h
//  RHKit
//
//  Created by Abner_G on 2017/8/19.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RHTools : NSObject

#pragma mark - 日期的年、月、日、时、分、秒、周
/**
 获取指定时间的年

 @param date 时间
 @return     年
 */
+ (NSInteger)yearFromDate:(NSDate *)date;

/**
 获取指定时间的月
 
 @param date 时间
 @return     月
 */
+ (NSInteger)monthFromDate:(NSDate *)date;

/**
 获取指定时间的日
 
 @param date 时间
 @return     日
 */
+ (NSInteger)dayFromDate:(NSDate *)date;

/**
 获取指定时间的时
 
 @param date 时间
 @return     时
 */
+ (NSInteger)hourFromDate:(NSDate *)date;

/**
 获取指定时间的分
 
 @param date 时间
 @return     分
 */
+ (NSInteger)minuteFromDate:(NSDate *)date;

/**
 获取指定时间的秒
 
 @param date 时间
 @return     秒
 */
+ (NSInteger)secondFromDate:(NSDate *)date;

/**
 获取指定时间的周
 
 @param date 时间
 @return     周
 */
+ (NSInteger)weekFromDate:(NSDate *)date;

#pragma mark - 文字宽高

/**
 获取高度
 
 @param width 宽度
 @param text 文字
 @param font 字体
 @return 高度
 */
+ (CGFloat)getHeightByText:(NSString *)text font:(UIFont *)font width:(CGFloat)width;

/**
 获取宽度
 
 @param text 文字
 @param font 字体
 @return 宽度
 */
+ (CGFloat)getWidthByText:(NSString *)text font:(UIFont *)font;

#pragma mark - 权限相关

/**
 请求麦克风权限
 
 @param completionHandler 完成回调
 */
+ (void)requestMacrophoneAuthorization:(nullable void(^)(BOOL granted))completionHandler;

/**
 请求相册权限
 
 @param completionHandler 完成回调
 */
+ (void)requestPhotoAuthorization:(nullable void(^)(BOOL granted))completionHandler;

/**
 请求相机权限
 
 @param completionHandler 完成回调
 */
+ (void)requestCameraAuthorization:(nullable void(^)(BOOL granted))completionHandler;


@end

NS_ASSUME_NONNULL_END

