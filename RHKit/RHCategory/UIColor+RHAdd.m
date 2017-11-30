//
//  UIColor+RHAdd.m
//  RHKit
//
//  Created by 郭人豪 on 2017/5/9.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "UIColor+RHAdd.h"

#define CLAMP_COLOR_VALUE(v)  (v) = (v) < 0 ? 0 : (v) > 255 ? 255 : (v)
#define DEFAULT_VOID_COLOR    ([UIColor blackColor])

@implementation UIColor (RHAdd)

/**
 创建随机色

 @return 随机色
 */
+ (UIColor *)randomColor {
    
    return [self colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1.0];
}


/**
 十六进制颜色

 @param hexString 十六进制颜色字符串
 @return          十六进制颜色
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString {
    
    return [UIColor colorWithHexString:hexString alpha:1.0];
}

/**
 十六进制颜色

 @param hexString  十六进制颜色字符串
 @param alpha      透明度
 @return           十六进制颜色
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha {
    
    NSString * cString = [[hexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) return DEFAULT_VOID_COLOR;
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    if ([cString length] != 6) return DEFAULT_VOID_COLOR;
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString * rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString * gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString * bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:alpha];
}


@end
