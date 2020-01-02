//
//  NSDictionary+RHAdd.h
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (RHAdd)

/**
 字典转换json字符串

 @param completionHandler 转换完成回调
 @return                  由字典转换成的json字符串
 */
- (nullable NSString *)transformToJSONString:(nullable void(^)(NSError * _Nullable error))completionHandler;

/// 转换成json字符串
- (nullable NSString *)jsonString;

@end

NS_ASSUME_NONNULL_END
