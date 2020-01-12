//
//  RHUtils.m
//  RHKit
//
//  Created by Abner_G on 2020/1/12.
//  Copyright © 2020 Abner_G. All rights reserved.
//

#import "RHUtils.h"
#import <objc/runtime.h>

#pragma mark - method exchange
/// 类方法交换
/// @param cls  类
/// @param sel1 方法1-原有
/// @param sel2 方法2-替换
void RHExchangeClassMethods(Class cls, SEL sel1, SEL sel2) {
    
    Method m1 = class_getClassMethod(cls, sel1);
    Method m2 = class_getClassMethod(cls, sel2);
    BOOL addMethod = class_addMethod(cls, sel1, method_getImplementation(m2), method_getTypeEncoding(m2));
    if (addMethod) {
        
        class_replaceMethod(cls, sel2, method_getImplementation(m2), method_getTypeEncoding(m2));
    } else {
        
        method_exchangeImplementations(m1, m2);
    }
}
/// 对象方法交换
/// @param cls  类
/// @param sel1 方法1-原有
/// @param sel2 方法2-替换
void RHExchangeInstanceMethods(Class cls, SEL sel1, SEL sel2) {
    
    Method m1 = class_getInstanceMethod(cls, sel1);
    Method m2 = class_getInstanceMethod(cls, sel2);
    BOOL addMethod = class_addMethod(cls, sel1, method_getImplementation(m2), method_getTypeEncoding(m2));
    if (addMethod) {
        
        class_replaceMethod(cls, sel2, method_getImplementation(m2), method_getTypeEncoding(m2));
    } else {
        
        method_exchangeImplementations(m1, m2);
    }
}

#pragma mark - equal

BOOL RHEdgeInsetsEqual(UIEdgeInsets insets1, UIEdgeInsets insets2) {
    
    return insets1.left == insets2.left && insets1.top == insets2.top && insets1.right == insets2.right && insets1.bottom == insets2.bottom;
}

BOOL RHSizeEqual(CGSize size1, CGSize size2) {
    
    return size1.width == size2.width && size1.height == size2.height;
}

BOOL RHRectEqual(CGRect rect1, CGRect rect2) {
    
    return rect1.origin.x == rect2.origin.x && rect1.origin.y == rect2.origin.y && rect1.size.width == rect2.size.width && rect1.size.height == rect2.size.height;
}

BOOL RHCoordinateEqual(CLLocationCoordinate2D coordinate1, CLLocationCoordinate2D coordinate2) {
    
    return coordinate1.latitude == coordinate2.latitude && coordinate1.longitude == coordinate2.longitude;
}
