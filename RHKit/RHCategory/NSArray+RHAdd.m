//
//  NSArray+RHAdd.m
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "NSArray+RHAdd.h"

@implementation NSArray (RHAdd)

/// 转换成json字符串
- (NSString *)jsonString {
    
    return [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:self options:kNilOptions error:nil] encoding:NSUTF8StringEncoding];
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
