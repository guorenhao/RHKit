//
//  RHTools.m
//  RHKit
//
//  Created by Abner_G on 2017/8/19.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "RHTools.h"
#import <AVFoundation/AVFoundation.h>
#import <CoreLocation/CLLocationManager.h>
#import <AssetsLibrary/ALAssetsLibrary.h>
#import <Photos/PHPhotoLibrary.h>

@implementation RHTools

#pragma mark - 文字宽高

/**
 获取文字高度
 
 @param text  文字
 @param font  字体
 @param width 宽度
 @return      文字高度
 */
+ (CGFloat)getHeightByText:(NSString *)text font:(UIFont *)font width:(CGFloat)width {
    
    return [self getHeightByText:text font:font width:width lines:0];
}

/**
 获取文字高度
 
 @param text        文字
 @param font        字体
 @param lineSpacing 行间距
 @param width       宽度
 @return            文字高度
 */
+ (CGFloat)getHeightByText:(NSString *)text font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing width:(CGFloat)width {
    
    return [self getHeightByText:text font:font lineSpacing:lineSpacing width:width lines:0];
}

/**
 获取文字高度
 
 @param attributedText 属性文字
 @param width          宽度
 @return               文字高度
 */
+ (CGFloat)getHeightByAttributedText:(NSAttributedString *)attributedText width:(CGFloat)width {
    
    return [self getHeightByAttributedText:attributedText width:width lines:0];
}

/**
 获取文字高度
 
 @param text  文字
 @param font  字体
 @param width 宽度
 @param lines          行数
 @return      文字高度
 */
+ (CGFloat)getHeightByText:(NSString *)text font:(UIFont *)font width:(CGFloat)width lines:(NSInteger)lines {
    
    if (text.length == 0 || width <= 0) {
        
        return 0;
    }
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, 0)];
    label.text = text;
    label.font = font;
    label.numberOfLines = lines;
    [label sizeToFit];
    CGFloat height = label.frame.size.height;
    return ceil(height);
}

/**
 获取文字高度
 
 @param text        文字
 @param font        字体
 @param lineSpacing 行间距
 @param width       宽度
 @param lines          行数
 @return            文字高度
 */
+ (CGFloat)getHeightByText:(NSString *)text font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing width:(CGFloat)width lines:(NSInteger)lines {
    
    if (text.length == 0 || width <= 0) {
        
        return 0;
    }
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, 0)];
    if (lineSpacing > 0) {
        
        NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineSpacing = lineSpacing;
        NSDictionary * attributes = @{
                                      NSFontAttributeName : font,
                                      NSParagraphStyleAttributeName : paragraphStyle
                                      };
        NSAttributedString * attStr = [[NSAttributedString alloc] initWithString:text attributes:attributes];
        label.attributedText = attStr;
    } else {
        
        label.text = text;
        label.font = font;
    }
    label.numberOfLines = lines;
    [label sizeToFit];
    CGFloat height = label.frame.size.height;
    return ceil(height);
}

/**
 获取文字高度
 
 @param attributedText 属性文字
 @param width          宽度
 @param lines          行数
 @return               文字高度
 */
+ (CGFloat)getHeightByAttributedText:(NSAttributedString *)attributedText width:(CGFloat)width lines:(NSInteger)lines {
    
    if (attributedText.length == 0 || width <= 0) {
        
        return 0;
    }
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, 0)];
    label.attributedText = attributedText;
    label.numberOfLines = lines;
    [label sizeToFit];
    CGFloat height = label.frame.size.height;
    return ceil(height);
}

/**
 获取文字宽度
 
 @param text 文字
 @param font 字体
 @return     文字宽度
 */
+ (CGFloat)getWidthByText:(NSString *)text font:(UIFont *)font {
    
    if (text.length == 0) {
        
        return 0;
    }
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, MAXFLOAT, 0)];
    label.text = text;
    label.font = font;
    [label sizeToFit];
    CGFloat width = label.frame.size.width;
    return ceil(width);
}

/**
 获取文字宽度
 
 @param attributedText 属性文字
 @return               文字宽度
 */
+ (CGFloat)getWidthByAttributedText:(NSAttributedString *)attributedText {
    
    if (attributedText.length == 0) {
        
        return 0;
    }
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, MAXFLOAT, 0)];
    label.attributedText = attributedText;
    [label sizeToFit];
    CGFloat width = label.frame.size.width;
    return ceil(width);
}

#pragma mark - 系统相关

/**
 获取设备名称
 
 @return 设备名称  e.g. "My iPhone"
 */
+ (NSString *)getDeviceName {
    
    return [[UIDevice currentDevice] name];
}

/**
 获取设备类型
 
 @return 设备类型 e.g. @"iPhone", @"iPod touch"
 */
+ (NSString *)getDeviceModel {
    
    return [[UIDevice currentDevice] model];
}

/**
 获取系统名称
 
 @return 系统名称 e.g. @"iOS"
 */
+ (NSString *)getSystemName {
    
    return [[UIDevice currentDevice] systemName];
}

/**
 获取系统版本
 
 @return 系统版本 e.g. @"4.0"
 */
+ (NSString *)getSystemVersion {
    
    return [[UIDevice currentDevice] systemVersion];
}

/**
 获取系统语言
 
 @return 系统语言 e.g. @"zh-Hans"
 */
+ (NSString *)getSystemLanguage {
    
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    NSArray * allLanguages = [defaults objectForKey:@"AppleLanguages"];
    // zh-Hans是简体中文，zh-Hant是繁体中文。。。
    return allLanguages.firstObject;
}

/**
 获取当前所在地
 
 @return 当前所在地
 */
+ (NSString *)getLocaleName {
    
    NSString * identifier = [[NSLocale currentLocale] localeIdentifier];
    NSString * displayName = [[NSLocale currentLocale] displayNameForKey:NSLocaleIdentifier value:identifier];
    return displayName;
}

/**
 获取当前所在地使用语言
 
 @return 当前所在地使用语言
 */
+ (NSString *)getLocaleLanguage {
    
    return [[NSLocale currentLocale] objectForKey:NSLocaleLanguageCode];
}


#pragma mark - 权限相关

/**
 请求麦克风权限
 
 @param completionHandler 完成回调
 */
+ (void)requestMacrophoneAuthorization:(void (^)(BOOL))completionHandler {
    
    AVAudioSession * audioSession = [AVAudioSession sharedInstance];
    if ([audioSession respondsToSelector:@selector(requestRecordPermission:)]) {
        
        [audioSession performSelector:@selector(requestRecordPermission:) withObject:^(BOOL granted) {
            
            if (completionHandler) {
                
                completionHandler(granted);
            }
        }];
    }
}

/**
 请求相册权限
 
 @param completionHandler 完成回调
 */
+ (void)requestPhotoAuthorization:(void (^)(BOOL))completionHandler {
    
    if (NSFoundationVersionNumber >= NSFoundationVersionNumber_iOS_9_0) {
        
        PHAuthorizationStatus st = [PHPhotoLibrary authorizationStatus];
        if (st == PHAuthorizationStatusAuthorized) {
            
            [self requestPhotoAuthorizationSuccess:completionHandler];
        } else if (st == PHAuthorizationStatusNotDetermined) {
            
            [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
                
                if (status == PHAuthorizationStatusAuthorized) {
                    
                    [self requestPhotoAuthorizationSuccess:completionHandler];
                } else if (status == PHAuthorizationStatusNotDetermined) {
                    
                    NSLog(@"未获取允许权限");
                } else {
                    
                    [self requestPhotoAuthorizationFailure:completionHandler];
                }
            }];
        } else {
            
            [self requestPhotoAuthorizationFailure:completionHandler];
        }
    } else {
        
        ALAuthorizationStatus st = [ALAssetsLibrary authorizationStatus];
        if (st == ALAuthorizationStatusAuthorized) {
            
            [self requestPhotoAuthorizationSuccess:completionHandler];
        } else if (st == ALAuthorizationStatusNotDetermined) {
            
            ALAssetsLibrary * assetsLibrary = [[ALAssetsLibrary alloc] init];
            [assetsLibrary enumerateGroupsWithTypes:ALAssetsGroupAll usingBlock:^(ALAssetsGroup *group, BOOL *stop) {
                
                if (*stop) {
                    
                    [self requestPhotoAuthorizationSuccess:completionHandler];
                    return;
                }
                *stop = TRUE;
            } failureBlock:^(NSError *error) {
                
                [self requestPhotoAuthorizationFailure:completionHandler];
            }];
        } else {
            
            [self requestPhotoAuthorizationFailure:completionHandler];
        }
    }
}

/**
 请求相机权限
 
 @param completionHandler 完成回调
 */
+ (void)requestCameraAuthorization:(void (^)(BOOL))completionHandler {
    
    AVAuthorizationStatus status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    if (status == AVAuthorizationStatusNotDetermined) {
        
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            
            if (!granted) {
                
                [self requestCameraAuthorizationFailure:completionHandler];
            } else {
                
                [self requestCameraAuthorizationSuccess:completionHandler];
            }
        }];
    } else if (status == AVAuthorizationStatusAuthorized) {
        
        [self requestCameraAuthorizationSuccess:completionHandler];
    } else {
        
        [self requestCameraAuthorizationFailure:completionHandler];
    }
}

// 允许访问相册
+ (void)requestPhotoAuthorizationSuccess:(void (^)(BOOL))completionHandler {
    
    NSLog(@"允许访问相册");
    if (completionHandler) {
        
        completionHandler(YES);
    }
}
// 不允许访问相册
+ (void)requestPhotoAuthorizationFailure:(void (^)(BOOL))completionHandler {
    
    NSLog(@"不允许访问相册");
    if (completionHandler) {
        
        completionHandler(NO);
    }
}
// 允许访问相机
+ (void)requestCameraAuthorizationSuccess:(void (^)(BOOL))completionHandler {
    
    NSLog(@"允许访问相机");
    if (completionHandler) {
        
        completionHandler(YES);
    }
}
// 不允许访问相机
+ (void)requestCameraAuthorizationFailure:(void (^)(BOOL))completionHandler {
    
    NSLog(@"不允许访问相机");
    if (completionHandler) {
        
        completionHandler(NO);
    }
}


@end

