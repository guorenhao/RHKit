//
//  NSDate+RHAdd.m
//  CocoapodsDemo
//
//  Created by 郭人豪 on 2019/6/22.
//  Copyright © 2019 Abner_G. All rights reserved.
//

#import "NSDate+RHAdd.h"

@implementation NSDate (RHAdd)

/// 通过日期字符串日期
/// @param dateString 日期字符串
/// @param format     日期格式
+ (NSDate *)dateWithDateString:(NSString *)dateString format:(NSString *)format {
    
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    [formatter setLocale:[NSLocale currentLocale]];
    [formatter setTimeZone:[NSTimeZone localTimeZone]];
    [formatter setDateFormat:format];
    return [formatter dateFromString:dateString];
}



@end
