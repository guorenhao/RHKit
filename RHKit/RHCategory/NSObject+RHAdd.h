//
//  NSObject+RHAdd.h
//  RHKit
//
//  Created by 郭人豪 on 2017/5/13.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (RHAdd)

/**
 获取对象的所有属性
 
 @return   属性数组
 */
- (nullable NSArray *)getAllKeys;
/**
 model转换字典
 
 @return   由model转换成的字典
 */
- (nullable NSDictionary *)transformToDictionary;



@end

NS_ASSUME_NONNULL_END
