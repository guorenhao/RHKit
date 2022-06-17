//
//  RHApplication.m
//  RHKit
//
//  Created by Abner_G on 2017/5/11.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "RHApplication.h"

@implementation RHApplication

/**
 app name
 
 @return app name
 */
+ (NSString *)appName {
    
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"];
}

/**
 app bundle name
 
 @return app bundle name
 */
+ (NSString *)appBundleName {
    
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleName"];
}

/**
 app bundle id
 
 @return app bundle id
 */
+ (NSString *)appBundleID {
    
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIdentifier"];
}

/**
 app version
 
 @return app version
 */
+ (NSString *)appVersion {
    
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

/**
 app bundle version
 
 @return app bundle version
 */
+ (NSString *)appBundleVersion {
    
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
}



/// safeArea top
+ (CGFloat)safeAreaTop {
    
    if (@available(iOS 13.0, *)) {
        
        NSSet * set = [UIApplication sharedApplication].connectedScenes;
        UIWindowScene * scene = [set anyObject];
        UIWindow * window = scene.windows.firstObject;
        return window.safeAreaInsets.top;
    } else if (@available(iOS 11.0, *)) {
        
        UIWindow * window = [UIApplication sharedApplication].windows.firstObject;
        return window.safeAreaInsets.top;
    }
    return 0;
}

/// safeArea bottom
+ (CGFloat)safeAreaBottom {
    
    if (@available(iOS 13.0, *)) {
        
        NSSet * set = [UIApplication sharedApplication].connectedScenes;
        UIWindowScene * scene = [set anyObject];
        UIWindow * window = scene.windows.firstObject;
        return window.safeAreaInsets.bottom;
    } else if (@available(iOS 11.0, *)) {
        
        UIWindow * window = [UIApplication sharedApplication].windows.firstObject;
        return window.safeAreaInsets.bottom;
    }
    return 0;
}

/// navigation height
+ (CGFloat)navigationHeight {
    
    return [self statusBarHeight] + 44.0;
}

/// statusBar height
+ (CGFloat)statusBarHeight {
    
    if (@available(iOS 13.0, *)) {
        
        NSSet * set = [UIApplication sharedApplication].connectedScenes;
        UIWindowScene * scene = [set anyObject];
        UIStatusBarManager * manager = scene.statusBarManager;
        return manager.statusBarFrame.size.height;
    } else {
        
        return [UIApplication sharedApplication].statusBarFrame.size.height;
    }
    return 20.0;
}

/// tabBar height
+ (CGFloat)tabBarHeight {
    
    return [self safeAreaBottom] + 49.0;
}



@end

