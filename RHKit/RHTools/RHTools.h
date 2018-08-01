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
 获取文字高度
 
 @param text  文字
 @param font  字体
 @param width 宽度
 @return      文字高度
 */
+ (CGFloat)getHeightByText:(NSString *)text font:(UIFont *)font width:(CGFloat)width;

/**
 获取文字高度
 
 @param text        文字
 @param font        字体
 @param lineSpacing 行间距
 @param width       宽度
 @return            文字高度
 */
+ (CGFloat)getHeightByText:(NSString *)text font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing width:(CGFloat)width;

/**
 获取文字高度
 
 @param attributedText 属性文字
 @param width          宽度
 @return               文字高度
 */
+ (CGFloat)getHeightByAttributedText:(NSAttributedString *)attributedText width:(CGFloat)width;

/**
 获取文字宽度
 
 @param text 文字
 @param font 字体
 @return     文字宽度
 */
+ (CGFloat)getWidthByText:(NSString *)text font:(UIFont *)font;

/**
 获取文字宽度
 
 @param attributedText 属性文字
 @return               文字宽度
 */
+ (CGFloat)getWidthByAttributedText:(NSAttributedString *)attributedText;

#pragma mark - 系统相关

/**
 获取设备名称
 
 @return 设备名称  e.g. "My iPhone"
 */
+ (NSString *)getDeviceName;

/**
 获取设备类型
 
 @return 设备类型 e.g. @"iPhone", @"iPod touch"
 */
+ (NSString *)getDeviceModel;

/**
 获取系统名称
 
 @return 系统名称 e.g. @"iOS"
 */
+ (NSString *)getSystemName;

/**
 获取系统版本
 
 @return 系统版本 e.g. @"4.0"
 */
+ (NSString *)getSystemVersion;

/**
 获取系统语言
 
 @return 系统语言 e.g. @"zh-Hans"
 */
+ (NSString *)getSystemLanguage;

/**
 获取当前所在地
 
 @return 当前所在地
 */
+ (NSString *)getLocaleName;

/**
 获取当前所在地使用语言
 
 @return 当前所在地使用语言
 */
+ (NSString *)getLocaleLanguage;

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

