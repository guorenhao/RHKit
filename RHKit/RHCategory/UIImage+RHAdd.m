//
//  UIImage+RHAdd.m
//  RHKit
//
//  Created by 郭人豪 on 2017/5/15.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "UIImage+RHAdd.h"

@implementation UIImage (RHAdd)

/**
 纯色图片

 @param color 图片颜色
 @return      图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color {
    
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

/**
 带有圆角的纯色图片

 @param color   图片颜色
 @param radius  圆角
 @return        图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color radius:(CGFloat)radius {
    
    CGRect rect = CGRectMake(0.0f, 0.0f, 5.0f + radius * 2, 5.0f + radius * 2);
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

#pragma mark 拉伸图片

/**
 默认从图片中心点开始拉伸的图片

 @param imgName  图片名称
 @return         拉伸后的图片
 */
+ (UIImage *)resizedImage:(NSString *)imgName {
    
    return [self resizedImage:imgName postionX:0.5 postionY:0.5];
}

/**
 可以自由拉伸的图片

 @param imgName 图片名称
 @param x       开始拉伸的x点
 @param y       开始拉伸的y点
 @return        拉伸后的图片
 */
+ (UIImage *)resizedImage:(NSString *)imgName postionX:(CGFloat)x postionY:(CGFloat)y {
    
    UIImage * image = [UIImage imageNamed:imgName];
    return [image stretchableImageWithLeftCapWidth:image.size.width * x topCapHeight:image.size.height * y];
}

#pragma mark - 调整拍照图片方向
+ (UIImage *)fixOrientation:(UIImage *)aImage {
    
    // No-op if the orientation is already correct
    if (aImage.imageOrientation == UIImageOrientationUp) {
        return aImage;
    }
    // We need to calculate the proper transformation to make the image upright.
    // We do it in 2 steps: Rotate if Left/Right/Down, and then flip if Mirrored.
    CGAffineTransform transform = CGAffineTransformIdentity;
    
    switch (aImage.imageOrientation) {
        case UIImageOrientationDown:
        case UIImageOrientationDownMirrored:
            transform = CGAffineTransformTranslate(transform, aImage.size.width, aImage.size.height);
            transform = CGAffineTransformRotate(transform, M_PI);
            break;
            
        case UIImageOrientationLeft:
        case UIImageOrientationLeftMirrored:
            transform = CGAffineTransformTranslate(transform, aImage.size.width, 0);
            transform = CGAffineTransformRotate(transform, M_PI_2);
            break;
            
        case UIImageOrientationRight:
        case UIImageOrientationRightMirrored:
            transform = CGAffineTransformTranslate(transform, 0, aImage.size.height);
            transform = CGAffineTransformRotate(transform, -M_PI_2);
            break;
        default:
            break;
    }
    
    switch (aImage.imageOrientation) {
        case UIImageOrientationUpMirrored:
        case UIImageOrientationDownMirrored:
            transform = CGAffineTransformTranslate(transform, aImage.size.width, 0);
            transform = CGAffineTransformScale(transform, -1, 1);
            break;
            
        case UIImageOrientationLeftMirrored:
        case UIImageOrientationRightMirrored:
            transform = CGAffineTransformTranslate(transform, aImage.size.height, 0);
            transform = CGAffineTransformScale(transform, -1, 1);
            break;
        default:
            break;
    }
    
    // Now we draw the underlying CGImage into a new context, applying the transform
    // calculated above.
    CGContextRef ctx = CGBitmapContextCreate(NULL, aImage.size.width, aImage.size.height,
                                             CGImageGetBitsPerComponent(aImage.CGImage), 0,
                                             CGImageGetColorSpace(aImage.CGImage),
                                             CGImageGetBitmapInfo(aImage.CGImage));
    CGContextConcatCTM(ctx, transform);
    switch (aImage.imageOrientation) {
        case UIImageOrientationLeft:
        case UIImageOrientationLeftMirrored:
        case UIImageOrientationRight:
        case UIImageOrientationRightMirrored:
            // Grr...
            CGContextDrawImage(ctx, CGRectMake(0,0,aImage.size.height,aImage.size.width), aImage.CGImage);
            break;
            
        default:
            CGContextDrawImage(ctx, CGRectMake(0,0,aImage.size.width,aImage.size.height), aImage.CGImage);
            break;
    }
    
    // And now we just create a new UIImage from the drawing context
    CGImageRef cgimg = CGBitmapContextCreateImage(ctx);
    UIImage * img = [UIImage imageWithCGImage:cgimg];
    CGContextRelease(ctx);
    CGImageRelease(cgimg);
    return img;
}


+ (UIImage *)imageWithClipImage:(UIImage *)image borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)color {
    
    CGFloat imageW = image.size.width;
    CGFloat border = borderWidth;
    CGFloat ovalW  = imageW + 2 * border;
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(ovalW, ovalW), NO, 0);
    UIBezierPath * path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, ovalW, ovalW)];
    [color set];
    [path fill];
    
    UIBezierPath * clipPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(border, border, imageW, imageW)];
    [clipPath addClip];
    [image drawAtPoint:CGPointMake(border, border)];
    UIImage * clipImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return clipImage;
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
