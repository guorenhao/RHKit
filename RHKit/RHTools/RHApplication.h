//
//  RHApplication.h
//  RHKit
//
//  Created by Abner_G on 2017/5/11.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RHApplication : NSObject

/**
 app name
 
 @return app name
 */
+ (NSString *)appName;

/**
 app bundle name
 
 @return app bundle name
 */
+ (NSString *)appBundleName;

/**
 app bundle id
 
 @return app bundle id
 */
+ (NSString *)appBundleID;

/**
 app version
 
 @return app version
 */
+ (NSString *)appVersion;

/**
 app bundle version
 
 @return app bundle version
 */
+ (NSString *)appBundleVersion;



/// safeArea top
+ (CGFloat)safeAreaTop;

/// safeArea bottom
+ (CGFloat)safeAreaBottom;

/// navigation height
+ (CGFloat)navigationHeight;

/// statusBar height
+ (CGFloat)statusBarHeight;

/// tabBar height
+ (CGFloat)tabBarHeight;




@end

NS_ASSUME_NONNULL_END

