//
//  UIColor+RHAdd.m
//  RHKit
//
//  Created by Abner_G on 2017/5/9.
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
 
 @param hex   十六进制颜色
 @return      十六进制颜色
 */
+ (UIColor *)colorWithHex:(NSUInteger)hex {
    
    return [self colorWithHex:hex alpha:1.0];
}

/**
 十六进制颜色

 @param hex   十六进制颜色
 @param alpha 透明度
 @return      十六进制颜色
 */
+ (UIColor *)colorWithHex:(NSUInteger)hex alpha:(CGFloat)alpha {
    
    CGFloat red, green, blue;
    red = ((CGFloat)((hex >> 16) & 0xFF)) / ((CGFloat)0xFF);
    green = ((CGFloat)((hex >> 8) & 0xFF)) / ((CGFloat)0xFF);
    blue = ((CGFloat)((hex >> 0) & 0xFF)) / ((CGFloat)0xFF);
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
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

#pragma mark - rgb

/// 获取颜色rgba属性
- (UIColorAttribute *)colorAttribute {
    
    return [UIColorAttribute attributeWithColor:self];
}

/// 颜色置为灰白色
- (UIColor *)gray {
    
    CGFloat r = 0.0;
    CGFloat g = 0.0;
    CGFloat b = 0.0;
    CGFloat a = 0.0;
    [self getRed:&r green:&g blue:&b alpha:&a];
    CGFloat m = (r + g + b)/3.0;
    return [UIColor colorWithRed:m green:m blue:m alpha:a];
}

@end
@implementation UIColorAttribute

+ (instancetype)attributeWithColor:(UIColor *)color {
    
    UIColorAttribute * attribute = [[[self class] alloc] init];
    CGFloat r = 0.0;
    CGFloat g = 0.0;
    CGFloat b = 0.0;
    CGFloat a = 0.0;
    [color getRed:&r green:&g blue:&b alpha:&a];
    attribute.red = r;
    attribute.green = g;
    attribute.blue = b;
    attribute.alpha = a;
    return attribute;
}

@end
