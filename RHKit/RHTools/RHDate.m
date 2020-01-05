//
//  RHDate.m
//  RHDemo
//
//  Created by 郭人豪 on 2020/1/4.
//  Copyright © 2020 Abner_G. All rights reserved.
//

#import "RHDate.h"

@implementation RHDate

#pragma mark - public

/// 指定日期的年
/// @param date 日期
+ (NSInteger)yearWithDate:(NSDate *)date {
    
    return [[self componetsWithDate:date unit:NSCalendarUnitYear] year];
}

/// 当前日期的年
+ (NSInteger)year {
    
    return [self yearWithDate:[NSDate date]];
}

/// 指定日期的月
/// @param date 日期
+ (NSInteger)monthWithDate:(NSDate *)date {
    
    return [[self componetsWithDate:date unit:NSCalendarUnitMonth] month];
}

/// 当前日期的月
+ (NSInteger)month {
    
    return [self monthWithDate:[NSDate date]];
}

/// 指定日期的日
/// @param date 日期
+ (NSInteger)dayWithDate:(NSDate *)date {
    
    return [[self componetsWithDate:date unit:NSCalendarUnitDay] day];
}

/// 当前日期的日
+ (NSInteger)day {
    
    return [self dayWithDate:[NSDate date]];
}

/// 指定日期的时
/// @param date 日期
+ (NSInteger)hourWithDate:(NSDate *)date {
    
    return [[self componetsWithDate:date unit:NSCalendarUnitHour] hour];
}

/// 当前日期的时
+ (NSInteger)hour {
    
    return [self hourWithDate:[NSDate date]];
}

/// 指定日期的分
/// @param date 日期
+ (NSInteger)minuteWithDate:(NSDate *)date {
    
    return [[self componetsWithDate:date unit:NSCalendarUnitMinute] minute];
}

/// 当前日期的分
+ (NSInteger)minute {
    
    return [self minuteWithDate:[NSDate date]];
}

/// 指定日期的秒
/// @param date 日期
+ (NSInteger)secondWithDate:(NSDate *)date {
    
    return [[self componetsWithDate:date unit:NSCalendarUnitSecond] second];
}

/// 当前日期的秒
+ (NSInteger)second {
    
    return [self secondWithDate:[NSDate date]];
}

/// 指定日期的周
/// @param date 日期
+ (NSInteger)weekDayWithDate:(NSDate *)date {
    
    NSInteger weakDay = [[self componetsWithDate:date unit:NSCalendarUnitWeekday] weekday];
    if (weakDay > 0) {
        
        weakDay -= 1;
    }
    if (weakDay == 0) {
        
        weakDay = 7;
    }
    return weakDay;
}

/// 当前日期的周
+ (NSInteger)weekDay {
    
    return [self weekDayWithDate:[NSDate date]];
}

#pragma mark - private

+ (NSDateComponents *)componetsWithDate:(NSDate *)date unit:(NSCalendarUnit)unit {
    
    NSCalendar * calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [calendar components:unit fromDate:date];
}



@end
