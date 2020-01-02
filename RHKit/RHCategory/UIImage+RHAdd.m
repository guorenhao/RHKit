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

/// 文字生成图片 默认居中
/// @param text      文字
/// @param size      生成的图片尺寸
/// @param font      文字字号
/// @param textColor 文字颜色
+ (UIImage *)imageWithText:(NSString *)text size:(CGSize)size font:(UIFont *)font textColor:(UIColor *)textColor {
    
    return [self imageWithText:text size:size font:font textColor:textColor isCenter:YES];
}

/// 文字生成图片
/// @param text      文字
/// @param size      生成的图片尺寸
/// @param font      文字字号
/// @param textColor 文字颜色
/// @param isCenter  是否居中
+ (UIImage *)imageWithText:(NSString *)text size:(CGSize)size font:(UIFont *)font textColor:(UIColor *)textColor isCenter:(BOOL)isCenter {
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    NSMutableDictionary *attribute = [NSMutableDictionary dictionary];
    attribute[NSFontAttributeName] = font ?: [UIFont systemFontOfSize:20];
    attribute[NSForegroundColorAttributeName] = textColor ?: [UIColor blackColor];
    CGFloat x = 0;
    CGFloat y = 0;
    if (isCenter) {
        
        CGFloat textWidth = [text boundingRectWithSize:CGSizeMake(0, 1000) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size.width;
        CGFloat textHeight = [text boundingRectWithSize:CGSizeMake(1000, 0) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size.height;
        x = (size.width - textWidth) / 2.0;
        y = (size.height - textHeight) / 2.0;
    }
    [text drawInRect:CGRectMake(x, y, size.width, size.height) withAttributes:attribute];
    UIImage *image  = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

/// 生成二维码图片
/// @param content 二维码内容
/// @param size    生成图片尺寸
+ (UIImage *)qrCodeImageWithContent:(NSString *)content size:(CGFloat)size {
    
    return [self qrCodeImageWithContent:content size:size centerImage:nil centerRadius:0];
}

/// 生成二维码图片
/// @param content      二维码内容
/// @param size         生成图片尺寸
/// @param centerImage  中间插入小图
/// @param centerRadius 中间插入小图圆角
+ (UIImage *)qrCodeImageWithContent:(NSString *)content size:(CGFloat)size centerImage:(UIImage *)centerImage centerRadius:(CGFloat)centerRadius {
    
    CIFilter *filter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    // 2.恢复默认
    [filter setDefaults];
    // 3.给过滤器添加数据
    // NSString *dataString = @"http://www.520it.com";
    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    // 4.通过KVO设置滤镜inputMessage数据
    [filter setValue:data forKeyPath:@"inputMessage"];
    // 4.获取输出的二维码
    CIImage *image = [filter outputImage];
    CGRect extent = CGRectIntegral(image.extent);
    CGFloat scale = MIN(size/CGRectGetWidth(extent), size/CGRectGetHeight(extent));
    // 1.创建bitmap;
    size_t width = CGRectGetWidth(extent) * scale;
    size_t height = CGRectGetHeight(extent) * scale;
    CGColorSpaceRef cs = CGColorSpaceCreateDeviceGray();
    CGContextRef bitmapRef = CGBitmapContextCreate(nil, width, height, 8, 0, cs, (CGBitmapInfo)kCGImageAlphaNone);
    CIContext *context = [CIContext contextWithOptions:nil];
    CGImageRef bitmapImage = [context createCGImage:image fromRect:extent];
    CGContextSetInterpolationQuality(bitmapRef, kCGInterpolationNone);
    CGContextScaleCTM(bitmapRef, scale, scale);
    CGContextDrawImage(bitmapRef, extent, bitmapImage);
    // 2.保存bitmap到图片
    CGImageRef scaledImage = CGBitmapContextCreateImage(bitmapRef);
    CGContextRelease(bitmapRef);
    CGImageRelease(bitmapImage);
    CGColorSpaceRelease(cs);
    UIImage *qrImage = [UIImage imageWithCGImage:scaledImage];
    CGImageRelease(scaledImage);
    if (centerImage) {
        
        return [self imageOfQRCodeInsertImage:centerImage originImage:qrImage radius:centerRadius];
    }
    return qrImage;
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

#pragma mark - private

// 在渲染后的二维码图上进行图片插入，如插入图为空，直接返回二维码图
+ (UIImage *)imageOfQRCodeInsertImage:(UIImage *)insertImage originImage:(UIImage *)originImage radius:(CGFloat)radius {
    
    if (!insertImage) {
        
        return originImage;
    }
    insertImage = [self imageOfRoundCornerWithImage:insertImage radius:radius];
    UIImage * whiteBG = [UIImage imageWithColor:[UIColor whiteColor] size:CGSizeMake(30, 30)];
    whiteBG = [self imageOfRoundCornerWithImage:whiteBG radius:radius];
    // 白色边缘宽度
    const CGFloat whiteSize = 5.f;
    CGSize brinkSize = CGSizeMake(originImage.size.width / 4, originImage.size.height / 4);
    CGFloat brinkX = (originImage.size.width - brinkSize.width) * 0.5;
    CGFloat brinkY = (originImage.size.height - brinkSize.height) * 0.5;
    CGSize imageSize = CGSizeMake(brinkSize.width - 2 * whiteSize, brinkSize.height - 2 * whiteSize);
    CGFloat imageX = brinkX + whiteSize;
    CGFloat imageY = brinkY + whiteSize;
    UIGraphicsBeginImageContext(originImage.size);
    [originImage drawInRect:(CGRect){0, 0, (originImage.size)}];
    [whiteBG drawInRect:(CGRect){brinkX, brinkY, (brinkSize)}];
    [insertImage drawInRect:(CGRect){imageX, imageY, (imageSize)}];
    UIImage * resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resultImage;
}

// 给传入的图片设置圆角后返回
+ (UIImage *)imageOfRoundCornerWithImage:(UIImage *)image radius:(CGFloat)radius {
    
    if (!image || (NSNull *)image == [NSNull null]) {
        
        return nil;
    }
    CGSize size = image.size;
    const CGFloat width = size.width;
    const CGFloat height = size.height;
    radius = MAX(5.0, radius);
    radius = MIN(10.0, radius);
    UIImage * resultImage = image;
    CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceRGB();
    CGContextRef contextRef = CGBitmapContextCreate(NULL, width, height, 8, 4 * width, colorSpaceRef, kCGImageAlphaPremultipliedFirst);
    CGRect rect = CGRectMake(0, 0, width, height);
    // 绘制圆角
    CGContextBeginPath(contextRef);
    RHAddRoundCornerToPath(contextRef, rect, radius, resultImage.CGImage);
    CGImageRef imageRef = CGBitmapContextCreateImage(contextRef);
    resultImage = [UIImage imageWithCGImage:imageRef];
    CGContextRelease(contextRef);
    CGColorSpaceRelease(colorSpaceRef);
    CGImageRelease(imageRef);
    return resultImage;
}

// 给上下文添加圆角模板
void RHAddRoundCornerToPath(CGContextRef contexRef, CGRect rect, float radius, CGImageRef imageRef) {
    
    if (radius == 0) {
        
        CGContextAddRect(contexRef, rect);
        return;
    }
    float width, height;
    CGContextSaveGState(contexRef);
    CGContextTranslateCTM(contexRef, CGRectGetMinX(rect), CGRectGetMinY(rect));
    width = CGRectGetWidth(rect);
    height = CGRectGetHeight(rect);
    // 裁剪路径
    CGContextMoveToPoint(contexRef, width, height / 2);
    CGContextAddArcToPoint(contexRef, width, height, width / 2, height, radius);
    CGContextAddArcToPoint(contexRef, 0, height, 0, height / 2, radius);
    CGContextAddArcToPoint(contexRef, 0, 0, width / 2, 0, radius);
    CGContextAddArcToPoint(contexRef, width, 0, width, height / 2, radius);
    CGContextClosePath(contexRef);
    CGContextClip(contexRef);
    CGContextDrawImage(contexRef, CGRectMake(0, 0, width, height), imageRef);
    CGContextRestoreGState(contexRef);
}


@end
