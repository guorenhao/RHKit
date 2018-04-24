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

#pragma mark - 日期的年、月、日、时、分、秒、周
/**
 获取指定时间的年
 
 @param date 时间
 @return     年
 */
+ (NSInteger)yearFromDate:(NSDate *)date {
    
    NSCalendar * calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents * comps = [[NSDateComponents alloc] init];
    NSInteger unitFlags = NSCalendarUnitYear;
    comps = [calendar components:unitFlags fromDate:date];
    return [comps year];
}

/**
 获取指定时间的月
 
 @param date 时间
 @return     月
 */
+ (NSInteger)monthFromDate:(NSDate *)date {
    
    NSCalendar * calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents * comps = [[NSDateComponents alloc] init];
    NSInteger unitFlags = NSCalendarUnitMonth;
    comps = [calendar components:unitFlags fromDate:date];
    return [comps month];
}

/**
 获取指定时间的日
 
 @param date 时间
 @return     日
 */
+ (NSInteger)dayFromDate:(NSDate *)date {
    
    NSCalendar * calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents * comps = [[NSDateComponents alloc] init];
    NSInteger unitFlags = NSCalendarUnitDay;
    comps = [calendar components:unitFlags fromDate:date];
    return [comps day];
}

/**
 获取指定时间的时
 
 @param date 时间
 @return     时
 */
+ (NSInteger)hourFromDate:(NSDate *)date {
    
    NSCalendar * calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents * comps = [[NSDateComponents alloc] init];
    NSInteger unitFlags = NSCalendarUnitHour;
    comps = [calendar components:unitFlags fromDate:date];
    return [comps hour];
}

/**
 获取指定时间的分
 
 @param date 时间
 @return     分
 */
+ (NSInteger)minuteFromDate:(NSDate *)date {
    
    NSCalendar * calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents * comps = [[NSDateComponents alloc] init];
    NSInteger unitFlags = NSCalendarUnitMinute;
    comps = [calendar components:unitFlags fromDate:date];
    return [comps minute];
}

/**
 获取指定时间的秒
 
 @param date 时间
 @return     秒
 */
+ (NSInteger)secondFromDate:(NSDate *)date {
    
    NSCalendar * calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents * comps = [[NSDateComponents alloc] init];
    NSInteger unitFlags = NSCalendarUnitSecond;
    comps = [calendar components:unitFlags fromDate:date];
    return [comps second];
}

/**
 获取指定时间的周
 
 @param date 时间
 @return     周
 */
+ (NSInteger)weekFromDate:(NSDate *)date {
    
    NSCalendar * calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents * comps = [[NSDateComponents alloc] init];
    NSInteger unitFlags = NSCalendarUnitWeekday;
    comps = [calendar components:unitFlags fromDate:date];
    return [comps weekday];
}

#pragma mark - 文字宽高

/**
 获取高度
 
 @param width 宽度
 @param text 文字
 @param font 字体
 @return 高度
 */
+ (CGFloat)getHeightByText:(NSString *)text font:(UIFont *)font width:(CGFloat)width {
    
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, 0)];
    label.text = text;
    label.font = font;
    label.numberOfLines = 0;
    [label sizeToFit];
    CGFloat height = label.frame.size.height;
    return height;
}

/**
 获取宽度
 
 @param text 文字
 @param font 字体
 @return 宽度
 */
+ (CGFloat)getWidthByText:(NSString *)text font:(UIFont *)font {
    
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, MAXFLOAT, 0)];
    label.text = text;
    label.font = font;
    [label sizeToFit];
    CGFloat width = label.frame.size.width;
    return width;
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

