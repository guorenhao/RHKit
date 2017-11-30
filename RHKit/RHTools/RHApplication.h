//
//  RHApplication.h
//  RHKit
//
//  Created by 郭人豪 on 2017/5/11.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RHApplication : NSObject

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


@end

NS_ASSUME_NONNULL_END

