//
//  NSDictionary+RHAdd.m
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "NSDictionary+RHAdd.h"

@implementation NSDictionary (RHAdd)

/**
 字典转换json字符串
 
 @param completionHandler 转换完成回调
 @return                  由字典转换成的json字符串
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

/// 转换成json字符串
- (NSString *)jsonString {
    
    return [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:self options:kNilOptions error:nil] encoding:NSUTF8StringEncoding];
}

@end
