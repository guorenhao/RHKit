//
//  RHApplication.m
//  RHKit
//
//  Created by 郭人豪 on 2017/5/11.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "RHApplication.h"

@implementation RHApplication

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

@end

