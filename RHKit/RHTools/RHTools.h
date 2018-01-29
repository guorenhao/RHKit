//
//  RHTools.h
//  RHKit
//
//  Created by 郭人豪 on 2017/8/19.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RHTools : NSObject

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

