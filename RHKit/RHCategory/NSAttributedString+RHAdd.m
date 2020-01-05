//
//  NSAttributedString+RHAdd.m
//  RHDemo
//
//  Created by 郭人豪 on 2020/1/5.
//  Copyright © 2020 Abner_G. All rights reserved.
//

#import "NSAttributedString+RHAdd.h"

@implementation NSAttributedString (RHAdd)

/// 属性字符串
/// @param string      字符串
/// @param font        字体
/// @param lineSpacing 行间距
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing {
    
    return [[[self class] alloc] initWithString:string font:font lineSpacing:lineSpacing lineBreakMode:NSLineBreakByWordWrapping strokeWidth:0 alignment:NSTextAlignmentLeft];
}

/// 属性字符串
/// @param string        字符串
/// @param font          字体
/// @param lineBreakMode 换行打断模式
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font lineBreakMode:(NSLineBreakMode)lineBreakMode {
    
    return [[[self class] alloc] initWithString:string font:font lineSpacing:0 lineBreakMode:lineBreakMode strokeWidth:0 alignment:NSTextAlignmentLeft];
}

/// 属性字符串
/// @param string        字符串
/// @param font          字体
/// @param strokeWidth   重影宽
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font strokeWidth:(CGFloat)strokeWidth {
    
    return [[[self class] alloc] initWithString:string font:font lineSpacing:0 lineBreakMode:NSLineBreakByWordWrapping strokeWidth:strokeWidth alignment:NSTextAlignmentLeft];
}

/// 属性字符串
/// @param string        字符串
/// @param font          字体
/// @param alignment     样式
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font alignment:(NSTextAlignment)alignment {
    
    return [[[self class] alloc] initWithString:string font:font lineSpacing:0 lineBreakMode:NSLineBreakByWordWrapping strokeWidth:0 alignment:alignment];
}

/// 属性字符串
/// @param string        字符串
/// @param font          字体
/// @param lineSpacing   行间距
/// @param lineBreakMode 换行打断模式
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing lineBreakMode:(NSLineBreakMode)lineBreakMode {
    
    return [[[self class] alloc] initWithString:string font:font lineSpacing:lineSpacing lineBreakMode:lineBreakMode strokeWidth:0 alignment:NSTextAlignmentLeft];
}

/// 属性字符串
/// @param string        字符串
/// @param font          字体
/// @param lineSpacing   行间距
/// @param strokeWidth   重影宽
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing strokeWidth:(CGFloat)strokeWidth {
    
    return [[[self class] alloc] initWithString:string font:font lineSpacing:lineSpacing lineBreakMode:NSLineBreakByWordWrapping strokeWidth:strokeWidth alignment:NSTextAlignmentLeft];
}

/// 属性字符串
/// @param string        字符串
/// @param font          字体
/// @param lineSpacing   行间距
/// @param alignment     样式
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing alignment:(NSTextAlignment)alignment {
    
    return [[[self class] alloc] initWithString:string font:font lineSpacing:lineSpacing lineBreakMode:NSLineBreakByWordWrapping strokeWidth:0 alignment:alignment];
}

/// 属性字符串
/// @param string        字符串
/// @param font          字体
/// @param lineSpacing   行间距
/// @param strokeWidth   重影宽
/// @param alignment     样式
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing strokeWidth:(CGFloat)strokeWidth alignment:(NSTextAlignment)alignment {
    
    return [[[self class] alloc] initWithString:string font:font lineSpacing:lineSpacing lineBreakMode:NSLineBreakByWordWrapping strokeWidth:strokeWidth alignment:alignment];
}

/// 属性字符串
/// @param string        字符串
/// @param font          字体
/// @param lineSpacing   行间距
/// @param lineBreakMode 换行打断模式
/// @param strokeWidth   重影宽
/// @param alignment     样式
- (instancetype)initWithString:(NSString *)string font:(UIFont *)font lineSpacing:(CGFloat)lineSpacing lineBreakMode:(NSLineBreakMode)lineBreakMode strokeWidth:(CGFloat)strokeWidth alignment:(NSTextAlignment)alignment {
    
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    if (lineSpacing > 0) {
        
        style.lineSpacing = lineSpacing;
    }
    style.lineBreakMode = lineBreakMode;
    style.alignment = alignment;
    if (strokeWidth < 0) {
        
        strokeWidth = 0;
    }
    return [[[self class] alloc] initWithString:string attributes:@{NSParagraphStyleAttributeName : style, NSFontAttributeName : font, NSStrokeWidthAttributeName : [NSNumber numberWithFloat:strokeWidth]}];
}

@end
