//
//  NSDate+RHAdd.h
//  RHKit
//
//  Created by Abner_G on 2019/6/22.
//  Copyright © 2019 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (RHAdd)


/// 通过日期字符串日期
/// @param dateString 日期字符串
/// @param format     日期格式
+ (NSDate *)dateWithDateString:(NSString *)dateString format:(NSString *)format;

@end

NS_ASSUME_NONNULL_END
