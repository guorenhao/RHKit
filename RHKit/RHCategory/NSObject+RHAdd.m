//
//  NSObject+RHAdd.m
//  RHKit
//
//  Created by 郭人豪 on 2017/5/13.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "NSObject+RHAdd.h"
#import <objc/runtime.h>

@implementation NSObject (RHAdd)

/**
 获取对象的所有属性

 @return   属性数组
 */
- (NSArray *)getAllKeys {
    
    u_int count;
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    NSMutableArray *propertiesArray = [NSMutableArray arrayWithCapacity:count];
    for (int i = 0; i<count; i++) {
        
        const char* propertyName = property_getName(properties[i]);
        [propertiesArray addObject:[NSString stringWithUTF8String: propertyName]];
    }
    free(properties);
    return propertiesArray;
}

/**
 model转换字典

 @return   由model转换成的字典
 */
- (NSDictionary *)converToDictionary {
    
    NSMutableDictionary *props = [NSMutableDictionary dictionary];
    unsigned int outCount, i;
    objc_property_t *properties = class_copyPropertyList([self class], &outCount);
    for (i = 0; i<outCount; i++) {
        
        objc_property_t property = properties[i];
        const char* char_f =property_getName(property);
        NSString *propertyName = [NSString stringWithUTF8String:char_f];
        id propertyValue = [self valueForKey:(NSString *)propertyName];
        if (propertyValue)
            [props setObject:propertyValue forKey:propertyName];
    }
    free(properties);
    return props;
}




@end
