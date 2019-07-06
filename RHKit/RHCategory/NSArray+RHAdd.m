//
//  NSArray+RHAdd.m
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "NSArray+RHAdd.h"

@implementation NSArray (RHAdd)

/**
 数组转换json字符串
 
 @param completionHandler 转换完成回调
 @return                  由数组转换成的json字符串
 */
- (NSString *)transformToJSONString:(void (^)(NSError * _Nullable))completionHandler {
    
    NSError * error = nil;
    NSData * jsonData = [NSJSONSerialization dataWithJSONObject:self options:kNilOptions error:&error];
    NSString * jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    if (completionHandler) {
        
        completionHandler(error);
    }
    return jsonString;
}

#pragma mark - safe assess

/**
 防止数组调用该方法崩溃
 
 @param key key
 @return    nil
 */
- (id)objectForKey:(NSString *)key {
    
    NSLog(@"-[__NSCFArray objectForKey:]: unrecognized selector sent to instance");
    return nil;
}

/**
 防止数组调用该方法崩溃
 
 @param key key
 @return    nil
 */
- (id)objectForKeyedSubscript:(id)key {
    
    NSLog(@"-[__NSCFArray objectForKeyedSubscript:]: unrecognized selector sent to instance");
    return nil;
}

@end
