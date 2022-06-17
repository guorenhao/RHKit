//
//  RHTools.h
//  RHKit
//
//  Created by Abner_G on 2017/8/19.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RHTools : NSObject

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
 获取文字高度
 
 @param text  文字
 @param font  字体
 @param width 宽度
 @param lines          行数
 @return      文字高度
 */
+ (CGFloat)getHeightByText:(NSString *)text font:(UIFont *)font width:(CGFloat)width lines:(NSInteger)lines;

/**
 获取文字高度
 
 @param text        文字
 @param font        字体
 @param lineSpacing 行间距
 @param width       宽度
 @param lines          行数
 @return            文字高度
 */
+ (CGFloat)getHeightByText:(NSString *)text font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing width:(CGFloat)width lines:(NSInteger)lines;

/**
 获取文字高度
 
 @param attributedText 属性文字
 @param width          宽度
 @param lines          行数
 @return               文字高度
 */
+ (CGFloat)getHeightByAttributedText:(NSAttributedString *)attributedText width:(CGFloat)width lines:(NSInteger)lines;

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

