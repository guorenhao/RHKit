//
//  RHDate.h
//  RHDemo
//
//  Created by 郭人豪 on 2020/1/4.
//  Copyright © 2020 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RHDate : NSObject

/// 指定日期的年
/// @param date 日期
+ (NSInteger)yearWithDate:(NSDate *)date;

/// 当前日期的年
+ (NSInteger)year;

/// 指定日期的月
/// @param date 日期
+ (NSInteger)monthWithDate:(NSDate *)date;

/// 当前日期的月
+ (NSInteger)month;

/// 指定日期的日
/// @param date 日期
+ (NSInteger)dayWithDate:(NSDate *)date;

/// 当前日期的日
+ (NSInteger)day;

/// 指定日期的时
/// @param date 日期
+ (NSInteger)hourWithDate:(NSDate *)date;

/// 当前日期的时
+ (NSInteger)hour;

/// 指定日期的分
/// @param date 日期
+ (NSInteger)minuteWithDate:(NSDate *)date;

/// 当前日期的分
+ (NSInteger)minute;

/// 指定日期的秒
/// @param date 日期
+ (NSInteger)secondWithDate:(NSDate *)date;

/// 当前日期的秒
+ (NSInteger)second;

/// 指定日期的周
/// @param date 日期
+ (NSInteger)weekDayWithDate:(NSDate *)date;

/// 当前日期的周
+ (NSInteger)weekDay;


@end

NS_ASSUME_NONNULL_END
