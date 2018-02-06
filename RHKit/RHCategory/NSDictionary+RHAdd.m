//
//  NSDictionary+RHAdd.m
//  RHKit
//
//  Created by 郭人豪 on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "NSDictionary+RHAdd.h"

@implementation NSDictionary (RHAdd)

/**
 字典转换json字符串
 
 @param completionHandler 转换完成回调
 @return                  由字典转换成的json字符串
 */
- (NSString *)converToJSONString:(void (^)(NSError * _Nullable))completionHandler {
    
    NSError * error = nil;
    NSData * jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&error];
    NSString * jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    if (completionHandler) {
        
        completionHandler(error);
    }
    return jsonString;
}

@end
