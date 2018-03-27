//
//  RHPath.h
//  RHKit
//
//  Created by Abner_G on 2017/5/11.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RHPath : NSObject

/**
 判断一个路径是否存在，不存在则创建
 
 @param path 路径
 @return 是否存在
 */
+ (BOOL)createPathIfNecessary:(NSString*)path;

/**
 document URL
 
 @return document URL
 */
+ (NSURL *)documentURL;

/**
 document path
 
 @return document path
 */
+ (NSString *)documentPath;

/**
 获取沙盒内文件路径
 
 @param fileName 文件名
 @return 文件所在沙盒路径
 */
+ (NSString *)documentPathWithFileName:(NSString *)fileName;

/**
 cache URL
 
 @return cache URL
 */
+ (NSURL *)cachesURL;

/**
 cache path
 
 @return cache path
 */
+ (NSString *)cachesPath;

/**
 获取cache内文件路径
 
 @param fileName 文件名
 @return 文件所在cache路径
 */
+ (NSString *)cachesPathWithFileName:(NSString *)fileName;

/**
 library URL
 
 @return library URL
 */
+ (NSURL *)libraryURL;

/**
 library path
 
 @return library path
 */
+ (NSString *)libraryPath;

/**
 获取library内文件路径
 
 @param fileName 文件名
 @return 文件所在cache路径
 */
+ (NSString *)libraryPathWithFileName:(NSString *)fileName;


@end

NS_ASSUME_NONNULL_END

