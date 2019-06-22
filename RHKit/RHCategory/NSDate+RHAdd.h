//
//  NSDate+RHAdd.h
//  CocoapodsDemo
//
//  Created by 郭人豪 on 2019/6/22.
//  Copyright © 2019 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (RHAdd)


/**
 通过时间字符串获取时间

 @param time   时间字符串
 @param format 时间格式
 @return       时间
 */
+ (NSDate *)dateWithTime:(NSString *)time format:(NSString *)format;

@end

NS_ASSUME_NONNULL_END
