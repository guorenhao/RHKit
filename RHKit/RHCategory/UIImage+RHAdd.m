//
//  UIImage+RHAdd.m
//  RHKit
//
//  Created by Abner_G on 2017/5/15.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "UIImage+RHAdd.h"
#import <Accelerate/Accelerate.h>

@implementation UIImage (RHAdd)

/**
 带尺寸的纯色图片

 @param color  图片颜色
 @param size   图片尺寸
 @return       图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size {
    
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

/**
 定义尺寸的圆角纯色图片

 @param color  图片颜色
 @param size   图片尺寸
 @param radius 圆角
 @return       图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size radius:(CGFloat)radius {
    
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    UIBezierPath * bezierPath = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius];
    CGContextAddPath(context, bezierPath.CGPath);
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextEOFillPath(context);
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

/**
 通过view生成图片
 
 @param view  要生成图片的view
 @return      view图片
 */
+ (UIImage *)imageWithView:(UIView *)view {
    
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [view.layer renderInContext:context];
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

/**
 通过view生成图片
 
 @param view   要生成图片的view
 @param opaque 是否不透明 NO-白底 YES-黑底
 @return       view图片
 */
+ (UIImage *)imageWithView:(UIView *)view opaque:(BOOL)opaque {
    
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, opaque, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [view.layer renderInContext:context];
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

/**
 通过view生成图片

 @param view   要生成图片的view
 @param opaque 是否不透明 NO-白底 YES-黑底
 @param scale  屏幕密度 [UIScreen mainScreen].scale
 @return       view图片
 */
+ (UIImage *)imageWithView:(UIView *)view opaque:(BOOL)opaque scale:(CGFloat)scale {
    
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, opaque, scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [view.layer renderInContext:context];
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

/**
 高斯模糊图片

 @param image 原图
 @param blur  模糊系数
 @return      高斯模糊图片
 */
+ (UIImage *)gaussianBlurImageWithImage:(UIImage *)image blur:(CGFloat)blur {
    
    if (blur < 0.f || blur > 1.f) {
        
        blur = 0.5f;
    }
    int boxSize = (int)(blur * 80);
    boxSize = boxSize - (boxSize % 2) + 1;
    CGImageRef imageRef = image.CGImage;
    vImage_Buffer inBuffer, outBuffer;
    vImage_Error error;
    void *pixelBuffer;
    // 从CGImage中获取数据
    CGDataProviderRef inProvider = CGImageGetDataProvider(imageRef);
    CFDataRef inBitmapData = CGDataProviderCopyData(inProvider);
    // 设置从CGImage中获取对象的属性
    inBuffer.width = CGImageGetWidth(imageRef);
    inBuffer.height = CGImageGetHeight(imageRef);
    inBuffer.rowBytes = CGImageGetBytesPerRow(imageRef);
    inBuffer.data = (void *)CFDataGetBytePtr(inBitmapData);
    pixelBuffer = malloc(CGImageGetBytesPerRow(imageRef) * CGImageGetHeight(imageRef));
    
    if (pixelBuffer == NULL) {
        
        NSLog(@"No pixelBuffer");
    }
    outBuffer.data = pixelBuffer;
    outBuffer.width = CGImageGetWidth(imageRef);
    outBuffer.height = CGImageGetHeight(imageRef);
    outBuffer.rowBytes = CGImageGetBytesPerRow(imageRef);
    error = vImageBoxConvolve_ARGB8888(&inBuffer, &outBuffer, NULL, 0, 0, boxSize, boxSize, NULL, kvImageEdgeExtend);
    if (error) {
        
        NSLog(@"error from convolution %ld", error);
    }
    CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceRGB();
    CGContextRef contextRef = CGBitmapContextCreate(outBuffer.data, outBuffer.width, outBuffer.height, 8, outBuffer.rowBytes, colorSpaceRef, kCGImageAlphaNoneSkipLast);
    CGImageRef resultImageRef = CGBitmapContextCreateImage(contextRef);
    UIImage * resultImage = [UIImage imageWithCGImage:resultImageRef];
    CGColorSpaceRelease(colorSpaceRef);
    free(pixelBuffer);
    CFRelease(inBitmapData);
    CGImageRelease(resultImageRef);
    return resultImage;
}

/**
 文字生成图片 默认居中

 @param string    文字
 @param size      生成的图片尺寸
 @param font      文字字号
 @param textColor 文字颜色
 @return          文字图片
 */
+ (UIImage *)imageFromStirng:(NSString *)string size:(CGSize)size font:(UIFont *)font textColor:(UIColor *)textColor {
    
    return [self imageFromStirng:string size:size font:font textColor:textColor isCenter:YES];
}

/**
 文字生成图片

 @param string    文字
 @param size      生成的图片尺寸
 @param font      文字字号
 @param textColor 文字颜色
 @param isCenter  是否居中
 @return          文字图片
 */
+ (UIImage *)imageFromStirng:(NSString *)string size:(CGSize)size font:(UIFont *)font textColor:(UIColor *)textColor isCenter:(BOOL)isCenter {
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    NSMutableDictionary *attribute = [NSMutableDictionary dictionary];
    attribute[NSFontAttributeName] = font ?: [UIFont systemFontOfSize:20];
    attribute[NSForegroundColorAttributeName] = textColor ?: [UIColor blackColor];
    CGFloat x = 0;
    CGFloat y = 0;
    if (isCenter) {
        
        CGFloat textWidth = [string boundingRectWithSize:CGSizeMake(0, 1000) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size.width;
        CGFloat textHeight = [string boundingRectWithSize:CGSizeMake(1000, 0) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size.height;
        x = (size.width - textWidth) / 2.0;
        y = (size.height - textHeight) / 2.0;
    }
    [string drawInRect:CGRectMake(x, y, size.width, size.height) withAttributes:attribute];
    UIImage *image  = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

#pragma mark - 拉伸图片

/**
 拉伸图片到指定尺寸
 
 @param newSize 要拉伸的尺寸
 @return        拉伸后的图片
 */
- (UIImage *)scaleToSize:(CGSize)newSize {
    
    UIGraphicsBeginImageContext(newSize);
    [self drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}



@end
