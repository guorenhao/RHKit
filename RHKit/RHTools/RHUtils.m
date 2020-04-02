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

BOOL ZXStringEqual(NSString * str1, NSString * str2) {
    
    return [str1 isEqualToString:str2];
}

#pragma mark - get image type

#define RH_FOUR_CC(c1, c2, c3, c4) ((uint32_t)(((c4) << 24) | ((c3) << 16) | ((c2) << 8) | (c1)))
#define RH_TWO_CC(c1, c2) ((uint16_t)(((c2) << 8) | (c1)))

RHImageType RHImageTypeForImageData(NSData *imageData) {
    
    if (!imageData) {
        
        return RHImageTypeUnknown;
    }
    CFDataRef data = (__bridge CFDataRef)imageData;
    uint64_t length = CFDataGetLength(data);
    if (length < 16) {
        
        return RHImageTypeUnknown;
    }
    const char *bytes = (char *)CFDataGetBytePtr(data);
    
    uint32_t magic4 = *((uint32_t *)bytes);
    switch (magic4) {
        case RH_FOUR_CC(0x4D, 0x4D, 0x00, 0x2A): { // big endian TIFF
            return RHImageTypeTIFF;
        } break;
            
        case RH_FOUR_CC(0x49, 0x49, 0x2A, 0x00): { // little endian TIFF
            return RHImageTypeTIFF;
        } break;
            
        case RH_FOUR_CC(0x00, 0x00, 0x01, 0x00): { // ICO
            return RHImageTypeICO;
        } break;
            
        case RH_FOUR_CC(0x00, 0x00, 0x02, 0x00): { // CUR
            return RHImageTypeICO;
        } break;
            
        case RH_FOUR_CC('i', 'c', 'n', 's'): { // ICNS
            return RHImageTypeICNS;
        } break;
            
        case RH_FOUR_CC('G', 'I', 'F', '8'): { // GIF
            return RHImageTypeGIF;
        } break;
            
        case RH_FOUR_CC(0x89, 'P', 'N', 'G'): {  // PNG
            uint32_t tmp = *((uint32_t *)(bytes + 4));
            if (tmp == RH_FOUR_CC('\r', '\n', 0x1A, '\n')) {
                
                return RHImageTypePNG;
            }
        } break;
            
        case RH_FOUR_CC('R', 'I', 'F', 'F'): { // WebP
            uint32_t tmp = *((uint32_t *)(bytes + 8));
            if (tmp == RH_FOUR_CC('W', 'E', 'B', 'P')) {
                
                return RHImageTypeWebP;
            }
        } break;
        /*
        case RH_FOUR_CC('B', 'P', 'G', 0xFB): { // BPG
            return RHImageTypeBPG;
        } break;
        */
    }
    
    uint16_t magic2 = *((uint16_t *)bytes);
    switch (magic2) {
        case RH_TWO_CC('B', 'A'):
        case RH_TWO_CC('B', 'M'):
        case RH_TWO_CC('I', 'C'):
        case RH_TWO_CC('P', 'I'):
        case RH_TWO_CC('C', 'I'):
        case RH_TWO_CC('C', 'P'): { // BMP
            return RHImageTypeBMP;
        }
        case RH_TWO_CC(0xFF, 0x4F): { // JPEG2000
            return RHImageTypeJPEG2000;
        }
    }
    // JPG             FF D8 FF
    if (memcmp(bytes,"\377\330\377",3) == 0) {
        
        return RHImageTypeJPEG;
    }
    // JP2
    if (memcmp(bytes + 4, "\152\120\040\040\015", 5) == 0) {
        
        return RHImageTypeJPEG2000;
    }
    
    return RHImageTypeUnknown;
}

//RHImageType RHImageTypeForImageData(NSData *data) {
//
//    if (!data) {
//
//        return RHImageTypeUnknown;
//    }
//    uint8_t c;
//    [data getBytes:&c length:1];
//    switch (c) {
//        case 0xFF:
//            return RHImageTypeJPEG;
//        case 0x89:
//            return RHImageTypePNG;
//        case 0x47:
//            return RHImageTypeGIF;
//        case 0x49:
//        case 0x4D:
//            return RHImageTypeTIFF;
//        case 0x52:
//            if (data.length < 12) {
//
//                return RHImageTypeUnknown;
//            }
//            NSString * str = [[NSString alloc] initWithData:[data subdataWithRange:NSMakeRange(0, 12)] encoding:NSASCIIStringEncoding];
//            if ([str hasPrefix:@"RIFF"] && [str hasSuffix:@"WEBP"]) {
//
//                return RHImageTypeWebP;
//            }
//            return RHImageTypeUnknown;
//    }
//    return RHImageTypeUnknown;
//}
