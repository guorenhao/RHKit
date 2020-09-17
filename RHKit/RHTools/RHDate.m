//
//  RHDate.m
//  RHKit
//
//  Created by Abner_G on 2020/1/4.
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

+ (NSDateComponents *)componetsWithDate:(NSDate *)date unit:(NSCalendarUnit)unit calendarIdentifier:(NSCalendarIdentifier)calendarIdentifier {
    
    NSCalendar * calendar = [[NSCalendar alloc] initWithCalendarIdentifier:calendarIdentifier];
    return [calendar components:unit fromDate:date];
}


@end
@implementation RHChineseCalendar

/// 指定日期的农历日期
/// @param date 日期
+ (RHChineseCalendar *)chineseCalendarWithDate:(NSDate *)date {
    
    /* 天干名称 */
    NSArray * tianganArr = @[@"甲", @"乙", @"丙", @"丁", @"戊", @"己", @"庚", @"辛", @"壬", @"癸"];
    /* 地支名称 */
    NSArray * dizhiArr = @[@"子", @"丑", @"寅", @"卯", @"辰", @"巳", @"午", @"未", @"申", @"酉", @"戌", @"亥"];
    /* 属相名称 */
    NSArray * zodiacArr = @[@"鼠", @"牛", @"虎", @"兔", @"龙", @"蛇", @"马", @"羊", @"猴", @"鸡", @"狗", @"猪"];
    /* 农历日期名 */
    NSArray * dayNameArr = @[@"*", @"初一", @"初二", @"初三", @"初四", @"初五", @"初六", @"初七", @"初八", @"初九", @"初十", @"十一", @"十二", @"十三", @"十四", @"十五", @"十六", @"十七", @"十八", @"十九", @"二十", @"廿一", @"廿二", @"廿三", @"廿四", @"廿五", @"廿六", @"廿七", @"廿八", @"廿九", @"三十"];
    /* 农历月份名 */
    NSArray * monNameArr = @[@"*", @"正", @"二", @"三", @"四", @"五", @"六", @"七", @"八", @"九", @"十", @"十一", @"腊"];

    /* 公历每月前面的天数 */
    const int monthAdd[12] = {0,31,59,90,120,151,181,212,243,273,304,334};
    /* 农历数据 */
    const int nongliData[100] =
    {2635,333387,1701,1748,267701,694,2391,133423,1175,396438
        ,3402,3749,331177,1453,694,201326,2350,465197,3221,3402
        ,400202,2901,1386,267611,605,2349,137515,2709,464533,1738
        ,2901,330421,1242,2651,199255,1323,529706,3733,1706,398762
        ,2741,1206,267438,2647,1318,204070,3477,461653,1386,2413
        ,330077,1197,2637,268877,3365,531109,2900,2922,398042,2395
        ,1179,267415,2635,661067,1701,1748,398772,2742,2391,330031
        ,1175,1611,200010,3749,527717,1452,2742,332397,2350,3222
        ,268949,3402,3493,133973,1386,464219,605,2349,334123,2709
        ,2890,267946,2773,592565,1210,2651,395863,1323,2707,265877};

    static NSInteger year, month, day;
    static NSInteger nTheDate,nIsEnd,m,k,n,i,nBit;
    
    /* 取公历年、月、日 */
    NSCalendar * calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags = NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear;
    NSDateComponents * conponent = [calendar components:unitFlags fromDate:date];

    year = [conponent year];
    month = [conponent month];
    day = [conponent day];

    /* 计算到初始时间1921年2月8日的天数：1921-2-8(正月初一) */
    nTheDate = (year - 1921) * 365 + (year - 1921) / 4 + day + monthAdd[month - 1] - 38;
    if ((!(year % 4)) && (month > 2)) {
        
        nTheDate += 1;
    }
    /* 计算农历天干、地支、月、日 */
    nIsEnd = 0;
    m = 0;
    while (nIsEnd != 1) {
        
        if (nongliData[m] < 4095) {
            
            k = 11;
        } else {
            
            k = 12;
        }
        n = k;
        while (n >= 0) {
            
            //获取nongliData(m)的第n个二进制位的值
            nBit = nongliData[m];
            for(i=1; i<n+1; i++) {
                
                nBit = nBit/2;
            }
            nBit = nBit % 2;
            if (nTheDate <= (29 + nBit)) {
                
                nIsEnd = 1;
                break;
            }
            nTheDate = nTheDate - 29 - nBit;
            n = n - 1;
        }
        if (nIsEnd) {
            
            break;
        }
        m = m + 1;
    }

    year = 1921 + m;
    month = k - n + 1;
    day = nTheDate;
    
    if (k == 12) {
        
        if (month == nongliData[m] / 65536 + 1) {
            
            month = 1 - month;
        } else if (month > nongliData[m] / 65536 + 1) {
            
            month = month - 1;
        }
    }
    /* 生成农历天干、地支、属相、月、日 */
    RHChineseCalendar * chineseCalendar = [RHChineseCalendar new];
    chineseCalendar.year = [NSString stringWithFormat:@"%@%@", [tianganArr objectAtIndex:(((year - 4) % 60) % 10)], [dizhiArr objectAtIndex:(((year - 4) % 60) % 12)]];
    if (month < 1) {
        
        chineseCalendar.month = [NSString stringWithFormat:@"闰%@月", [monNameArr objectAtIndex:(-1 * month)]];
    } else {
        
        chineseCalendar.month = [NSString stringWithFormat:@"%@月", [monNameArr objectAtIndex:month]];
    }
    chineseCalendar.day = [dayNameArr objectAtIndex:day];
    chineseCalendar.zodiac = [zodiacArr objectAtIndex:(((year - 4) % 60) % 12)];
    return chineseCalendar;
}

/// 当前日期的农历日期
+ (RHChineseCalendar *)chineseCalendar {
    
    return [self chineseCalendarWithDate:[NSDate date]];
}


@end
