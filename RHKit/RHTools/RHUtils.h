//
//  RHUtils.h
//  RHKit
//
//  Created by Abner_G on 2020/1/12.
//  Copyright © 2020 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreLocation/CLLocation.h>

#pragma mark - method exchange
/// 类方法交换
/// @param cls  类
/// @param sel1 方法1-原有
/// @param sel2 方法2-替换
void RHExchangeClassMethods(Class cls, SEL sel1, SEL sel2);
/// 对象方法交换
/// @param cls  类
/// @param sel1 方法1-原有
/// @param sel2 方法2-替换
void RHExchangeInstanceMethods(Class cls, SEL sel1, SEL sel2);

#pragma mark - equal

BOOL RHEdgeInsetsEqual(UIEdgeInsets insets1, UIEdgeInsets insets2);

BOOL RHSizeEqual(CGSize size1, CGSize size2);

BOOL RHRectEqual(CGRect rect1, CGRect rect2);

BOOL RHCoordinateEqual(CLLocationCoordinate2D coordinate1, CLLocationCoordinate2D coordinate2);
