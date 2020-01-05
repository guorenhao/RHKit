//
//  NSDictionary+RHAdd.m
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "NSDictionary+RHAdd.h"

@implementation NSDictionary (RHAdd)

/// 转换成json字符串
- (NSString *)jsonString {
    
    return [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:self options:kNilOptions error:nil] encoding:NSUTF8StringEncoding];
}

#pragma mark - CNLog

#ifdef DEBUG

- (NSString *)descriptionWithLocale:(id)locale {
    
    return [self logDescription];;
}

- (NSString *)description {
        
    return [self logDescription];
}

- (NSString *)logDescription {
    
    return [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil] encoding:NSUTF8StringEncoding];
}

#endif


@end
