//
//  RHPath.m
//  RHKit
//
//  Created by Abner_G on 2017/5/11.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "RHPath.h"

@implementation RHPath

/**
 判断一个路径是否存在，不存在则创建
 
 @param path 路径
 @return 是否存在
 */
+ (BOOL)createPathIfNecessary:(NSString*)path {
    
    BOOL success = YES;
    
    NSFileManager * fileManager = [NSFileManager defaultManager];
    
    if (![fileManager fileExistsAtPath:path]) {
        
        success = [fileManager createDirectoryAtPath:path
                         withIntermediateDirectories: YES
                                          attributes: nil
                                               error: nil];
    }
    return success;
}

/**
 document URL
 
 @return document URL
 */
+ (NSURL *)documentURL {
    
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

/**
 document path
 
 @return document path
 */
+ (NSString *)documentPath {
    
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
}

/**
 获取沙盒内文件路径
 
 @param fileName 文件名
 @return 文件所在沙盒路径
 */
+ (NSString *)documentPathWithFileName:(NSString *)fileName {
    
    NSString * documentPath = [RHPath documentPath];
    NSString * filePath = [documentPath stringByAppendingPathComponent:fileName];
    [RHPath createPathIfNecessary:filePath];
    return filePath;
}

/**
 cache URL
 
 @return cache URL
 */
+ (NSURL *)cachesURL {
    
    return [[[NSFileManager defaultManager] URLsForDirectory:NSCachesDirectory inDomains:NSUserDomainMask] lastObject];
}

/**
 cache path
 
 @return cache path
 */
+ (NSString *)cachesPath {
    
    return [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
}

/**
 获取cache内文件路径
 
 @param fileName 文件名
 @return 文件所在cache路径
 */
+ (NSString *)cachesPathWithFileName:(NSString *)fileName {
    
    NSString * cachesPath = [RHPath cachesPath];
    NSString * filePath = [cachesPath stringByAppendingPathComponent:fileName];
    [RHPath createPathIfNecessary:filePath];
    return filePath;
}

/**
 library URL
 
 @return library URL
 */
+ (NSURL *)libraryURL {
    
    return [[[NSFileManager defaultManager] URLsForDirectory:NSLibraryDirectory inDomains:NSUserDomainMask] lastObject];
}

/**
 library path
 
 @return library path
 */
+ (NSString *)libraryPath {
    
    return [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) firstObject];
}

/**
 获取library内文件路径
 
 @param fileName 文件名
 @return 文件所在cache路径
 */
+ (NSString *)libraryPathWithFileName:(NSString *)fileName {
    
    NSString * libraryPath = [RHPath libraryPath];
    NSString * filePath = [libraryPath stringByAppendingPathComponent:fileName];
    [RHPath createPathIfNecessary:filePath];
    return filePath;
}



@end

