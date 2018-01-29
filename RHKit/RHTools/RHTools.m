//
//  RHTools.m
//  RHKit
//
//  Created by 郭人豪 on 2017/8/19.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "RHTools.h"
#import <AVFoundation/AVFoundation.h>
#import <CoreLocation/CLLocationManager.h>
#import <AssetsLibrary/ALAssetsLibrary.h>
#import <Photos/PHPhotoLibrary.h>

@implementation RHTools

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

