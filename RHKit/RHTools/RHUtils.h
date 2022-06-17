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

typedef NS_ENUM(NSUInteger, RHImageType) {
    
    RHImageTypeUnknown = 0, // unknown
    RHImageTypeJPEG,        // jpeg, jpg
    RHImageTypeJPEG2000,    // jp2
    RHImageTypeTIFF,        // tiff, tif
    RHImageTypeBMP,         // bmp
    RHImageTypeICO,         // ico
    RHImageTypeICNS,        // icns
    RHImageTypeGIF,         // gif
    RHImageTypePNG,         // png
    RHImageTypeWebP,        // webp
    RHImageTypeOther,       // other image format
};

//typedef NS_ENUM(NSInteger, RHLayoutAttribute) {
//
//    RHLayoutAttributeTop = 0,
//    RHLayoutAttributeLeft,
//    RHLayoutAttributeBottom,
//    RHLayoutAttributeRight,
//};

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

/// insets比较
/// @param insets1 insets1
/// @param insets2 insets2
BOOL RHEdgeInsetsEqual(UIEdgeInsets insets1, UIEdgeInsets insets2);

/// size比较
/// @param size1 size1
/// @param size2 size2
BOOL RHSizeEqual(CGSize size1, CGSize size2);

/// rect比较
/// @param rect1 rect1
/// @param rect2 rect2
BOOL RHRectEqual(CGRect rect1, CGRect rect2);

/// 坐标比较
/// @param coordinate1 coordinate1
/// @param coordinate2 coordinate2
BOOL RHCoordinateEqual(CLLocationCoordinate2D coordinate1, CLLocationCoordinate2D coordinate2);

/// 字符串比较
/// @param str1 str1
/// @param str2 str2
BOOL RHStringEqual(NSString * str1, NSString * str2);

#pragma mark - get image type

/// 获取图片类型
/// @param imageData imageData
RHImageType RHImageTypeForImageData(NSData *imageData);
