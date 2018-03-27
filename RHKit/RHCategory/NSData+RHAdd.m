//
//  NSData+RHAdd.m
//  RHKit
//
//  Created by Abner_G on 2017/5/14.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "NSData+RHAdd.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSData (RHAdd)

/**
 md2加密生成NSData
 */
- (NSData *)md2Data {
    
    unsigned char result[CC_MD2_DIGEST_LENGTH];
    CC_MD2(self.bytes, (CC_LONG)self.length, result);
    return [NSData dataWithBytes:result length:CC_MD2_DIGEST_LENGTH];
}

/**
 md2加密生成NSString
 */
- (NSString *)md2String {
    
    unsigned char result[CC_MD2_DIGEST_LENGTH];
    CC_MD2(self.bytes, (CC_LONG)self.length, result);
    NSMutableString * hash = [NSMutableString stringWithCapacity:CC_MD2_DIGEST_LENGTH * 2];
    for (int i = 0; i < CC_MD2_DIGEST_LENGTH; i++) {
        
        [hash appendFormat:@"%02x", result[i]];
    }
    return hash;
}

/**
 md4加密生成NSData
 */
- (NSData *)md4Data {
    
    unsigned char result[CC_MD4_DIGEST_LENGTH];
    CC_MD4(self.bytes, (CC_LONG)self.length, result);
    return [NSData dataWithBytes:result length:CC_MD4_DIGEST_LENGTH];
}

/**
 md4加密生成NSString
 */
- (NSString *)md4String {
    
    unsigned char result[CC_MD4_DIGEST_LENGTH];
    CC_MD4(self.bytes, (CC_LONG)self.length, result);
    NSMutableString * hash = [NSMutableString stringWithCapacity:CC_MD4_DIGEST_LENGTH * 2];
    for (int i = 0; i < CC_MD4_DIGEST_LENGTH; i++) {
        
        [hash appendFormat:@"%02x", result[i]];
    }
    return hash;
}

/**
 md5加密生成NSData
 */
- (NSData *)md5Data {
    
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(self.bytes, (CC_LONG)self.length, result);
    return [NSData dataWithBytes:result length:CC_MD5_DIGEST_LENGTH];
}

/**
 md5加密生成NSString
 */
- (NSString *)md5String {
    
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(self.bytes, (CC_LONG)self.length, result);
    NSMutableString * hash = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        
        [hash appendFormat:@"%02x", result[i]];
    }
    return hash;
}

/**
 sha1加密生成NSData
 */
- (NSData *)sha1Data {
    
    unsigned char result[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(self.bytes, (CC_LONG)self.length, result);
    return [NSData dataWithBytes:result length:CC_SHA1_DIGEST_LENGTH];
}

/**
 sha1加密生成NSString
 */
- (NSString *)sha1String {
    
    unsigned char result[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(self.bytes, (CC_LONG)self.length, result);
    NSMutableString * hash = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    for (int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
        
        [hash appendFormat:@"%02x", result[i]];
    }
    return hash;
}

/**
 sha224加密生成NSData
 */
- (NSData *)sha224Data {
    
    unsigned char result[CC_SHA224_DIGEST_LENGTH];
    CC_SHA224(self.bytes, (CC_LONG)self.length, result);
    return [NSData dataWithBytes:result length:CC_SHA224_DIGEST_LENGTH];
}

/**
 sha224加密生成NSString
 */
- (NSString *)sha224String {
    
    unsigned char result[CC_SHA224_DIGEST_LENGTH];
    CC_SHA224(self.bytes, (CC_LONG)self.length, result);
    NSMutableString * hash = [NSMutableString stringWithCapacity:CC_SHA224_DIGEST_LENGTH * 2];
    for (int i = 0; i < CC_SHA224_DIGEST_LENGTH; i++) {
        
        [hash appendFormat:@"%02x", result[i]];
    }
    return hash;
}

/**
 sha256加密生成NSData
 */
- (NSData *)sha256Data {
    
    unsigned char result[CC_SHA256_DIGEST_LENGTH];
    CC_SHA256(self.bytes, (CC_LONG)self.length, result);
    return [NSData dataWithBytes:result length:CC_SHA256_DIGEST_LENGTH];
}

/**
 sha256加密生成NSString
 */
- (NSString *)sha256String {
    
    unsigned char result[CC_SHA256_DIGEST_LENGTH];
    CC_SHA256(self.bytes, (CC_LONG)self.length, result);
    NSMutableString * hash = [NSMutableString stringWithCapacity:CC_SHA256_DIGEST_LENGTH * 2];
    for (int i = 0; i < CC_SHA256_DIGEST_LENGTH; i++) {
        
        [hash appendFormat:@"%02x", result[i]];
    }
    return hash;
}

/**
 sha384加密生成NSData
 */
- (NSData *)sha384Data {
    
    unsigned char result[CC_SHA384_DIGEST_LENGTH];
    CC_SHA384(self.bytes, (CC_LONG)self.length, result);
    return [NSData dataWithBytes:result length:CC_SHA384_DIGEST_LENGTH];
}

/**
 sha384加密生成NSString
 */
- (NSString *)sha384String {
    
    unsigned char result[CC_SHA384_DIGEST_LENGTH];
    CC_SHA384(self.bytes, (CC_LONG)self.length, result);
    NSMutableString * hash = [NSMutableString stringWithCapacity:CC_SHA384_DIGEST_LENGTH * 2];
    for (int i = 0; i < CC_SHA384_DIGEST_LENGTH; i++) {
        
        [hash appendFormat:@"%02x", result[i]];
    }
    return hash;
}

/**
 sha512加密生成NSData
 */
- (NSData *)sha512Data {
    
    unsigned char result[CC_SHA512_DIGEST_LENGTH];
    CC_SHA512(self.bytes, (CC_LONG)self.length, result);
    return [NSData dataWithBytes:result length:CC_SHA512_DIGEST_LENGTH];
}

/**
 sha512加密生成NSString
 */
- (NSString *)sha512String {
    
    unsigned char result[CC_SHA512_DIGEST_LENGTH];
    CC_SHA512(self.bytes, (CC_LONG)self.length, result);
    NSMutableString * hash = [NSMutableString stringWithCapacity:CC_SHA512_DIGEST_LENGTH * 2];
    for (int i = 0; i < CC_SHA512_DIGEST_LENGTH; i++) {
        
        [hash appendFormat:@"%02x", result[i]];
    }
    return hash;
}


/**
 通过key加密生成NSData

 @param alg 加密方式
 @param key key
 */
- (NSData *)hmacDataWithAlg:(CCHmacAlgorithm)alg key:(NSData *)key {
    
    size_t size;
    switch (alg) {
        case kCCHmacAlgMD5: size = CC_MD5_DIGEST_LENGTH; break;
        case kCCHmacAlgSHA1: size = CC_SHA1_DIGEST_LENGTH; break;
        case kCCHmacAlgSHA224: size = CC_SHA224_DIGEST_LENGTH; break;
        case kCCHmacAlgSHA256: size = CC_SHA256_DIGEST_LENGTH; break;
        case kCCHmacAlgSHA384: size = CC_SHA384_DIGEST_LENGTH; break;
        case kCCHmacAlgSHA512: size = CC_SHA512_DIGEST_LENGTH; break;
        default: return nil;
    }
    unsigned char result[size];
    CCHmac(alg, [key bytes], key.length, self.bytes, self.length, result);
    return [NSData dataWithBytes:result length:size];
}

/**
 通过key加密生成NSString
 
 @param alg 加密方式
 @param key key
 */
- (NSString *)hmacStringWithAlg:(CCHmacAlgorithm)alg key:(NSString *)key {
    
    size_t size;
    switch (alg) {
        case kCCHmacAlgMD5: size = CC_MD5_DIGEST_LENGTH; break;
        case kCCHmacAlgSHA1: size = CC_SHA1_DIGEST_LENGTH; break;
        case kCCHmacAlgSHA224: size = CC_SHA224_DIGEST_LENGTH; break;
        case kCCHmacAlgSHA256: size = CC_SHA256_DIGEST_LENGTH; break;
        case kCCHmacAlgSHA384: size = CC_SHA384_DIGEST_LENGTH; break;
        case kCCHmacAlgSHA512: size = CC_SHA512_DIGEST_LENGTH; break;
        default: return nil;
    }
    unsigned char result[size];
    const char * cKey = [key cStringUsingEncoding:NSUTF8StringEncoding];
    CCHmac(alg, cKey, strlen(cKey), self.bytes, self.length, result);
    NSMutableString * hash = [NSMutableString stringWithCapacity:size * 2];
    for (int i = 0; i < size; i++) {
        
        [hash appendFormat:@"%02x", result[i]];
    }
    return hash;
}

/**
 通过key进行md5加密生成NSData
 */
- (NSData *)hmacMD5DataWithKey:(NSData *)key {
    
    return [self hmacDataWithAlg:kCCHmacAlgMD5 key:key];
}

/**
 通过key进行md5加密生成NSString
 */
- (NSString *)hmacMD5StringWithKey:(NSString *)key {
    
    return [self hmacStringWithAlg:kCCHmacAlgMD5 key:key];
}

/**
 通过key进行sha1加密生成NSData
 */
- (NSData *)hmacSHA1DataWithKey:(NSData *)key {
    
    return [self hmacDataWithAlg:kCCHmacAlgSHA1 key:key];
}

/**
 通过key进行sha1加密生成NSString
 */
- (NSString *)hmacSHA1StringWithKey:(NSString *)key {
    
    return [self hmacStringWithAlg:kCCHmacAlgSHA1 key:key];
}

/**
 通过key进行sha224加密生成NSData
 */
- (NSData *)hmacSHA224DataWithKey:(NSData *)key {
    
    return [self hmacDataWithAlg:kCCHmacAlgSHA224 key:key];
}

/**
 通过key进行sha224加密生成NSString
 */
- (NSString *)hmacSHA224StringWithKey:(NSString *)key {
    
    return [self hmacStringWithAlg:kCCHmacAlgSHA224 key:key];
}

/**
 通过key进行sha256加密生成NSData
 */
- (NSData *)hmacSHA256DataWithKey:(NSData *)key {
    
    return [self hmacDataWithAlg:kCCHmacAlgSHA256 key:key];
}

/**
 通过key进行sha256加密生成NSString
 */
- (NSString *)hmacSHA256StringWithKey:(NSString *)key {
    
    return [self hmacStringWithAlg:kCCHmacAlgSHA256 key:key];
}

/**
 通过key进行sha384加密生成NSData
 */
- (NSData *)hmacSHA384DataWithKey:(NSData *)key {
    
    return [self hmacDataWithAlg:kCCHmacAlgSHA384 key:key];
}

/**
 通过key进行sha384加密生成NSString
 */
- (NSString *)hmacSHA384StringWithKey:(NSString *)key {
    
    return [self hmacStringWithAlg:kCCHmacAlgSHA384 key:key];
}

/**
 通过key进行sha512加密生成NSData
 */
- (NSData *)hmacSHA512DataWithKey:(NSData *)key {
    
    return [self hmacDataWithAlg:kCCHmacAlgSHA512 key:key];
}

/**
 通过key进行sha512加密生成NSString
 */
- (NSString *)hmacSHA512StringWithKey:(NSString *)key {
    
    return [self hmacStringWithAlg:kCCHmacAlgSHA512 key:key];
}

#pragma mark - encrypt and decrypt

/**
 AES加密生成NSData

 @param key key
 @param iv  initialization vector
 */
- (NSData *)aes256EncryptWithKey:(NSData *)key iv:(NSData *)iv {
    
    if (key.length != 16 && key.length != 24 && key.length != 32) {
        
        return nil;
    }
    if (iv.length != 16 && iv.length != 0) {
        
        return nil;
    }
    
    NSData * result = nil;
    size_t bufferSize = self.length + kCCBlockSizeAES128;
    void * buffer = malloc(bufferSize);
    if (!buffer) {
        
        return nil;
    }
    size_t encryptedSize = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCEncrypt,
                                          kCCAlgorithmAES128,
                                          kCCOptionPKCS7Padding,
                                          key.bytes,
                                          key.length,
                                          iv.bytes,
                                          self.bytes,
                                          self.length,
                                          buffer,
                                          bufferSize,
                                          &encryptedSize);
    if (cryptStatus == kCCSuccess) {
        
        result = [[NSData alloc] initWithBytes:buffer length:encryptedSize];
        free(buffer);
        return result;
    } else {
        
        free(buffer);
        return nil;
    }
}

/**
 AES解密生成NSData
 
 @param key key
 @param iv  initialization vector
 */
- (NSData *)aes256DecryptWithkey:(NSData *)key iv:(NSData *)iv {
    
    if (key.length != 16 && key.length != 24 && key.length != 32) {
        
        return nil;
    }
    if (iv.length != 16 && iv.length != 0) {
        
        return nil;
    }
    
    NSData * result = nil;
    size_t bufferSize = self.length + kCCBlockSizeAES128;
    void * buffer = malloc(bufferSize);
    if (!buffer) return nil;
    size_t encryptedSize = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt,
                                          kCCAlgorithmAES128,
                                          kCCOptionPKCS7Padding,
                                          key.bytes,
                                          key.length,
                                          iv.bytes,
                                          self.bytes,
                                          self.length,
                                          buffer,
                                          bufferSize,
                                          &encryptedSize);
    if (cryptStatus == kCCSuccess) {
        
        result = [[NSData alloc]initWithBytes:buffer length:encryptedSize];
        free(buffer);
        return result;
    } else {
        
        free(buffer);
        return nil;
    }
}

#pragma mark - encode and decode

/**
 UTF8加密生成NSString
 */
- (NSString *)utf8String {
    
    if (self.length > 0) {
        
        return [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
    }
    return @"";
}

/**
 十六进制加密生成NSString 字母大写
 */
- (NSString *)hexString {
    
    NSUInteger length = self.length;
    NSMutableString * result = [NSMutableString stringWithCapacity:length * 2];
    const unsigned char * byte = self.bytes;
    for (int i = 0; i < length; i++, byte++) {
        
        [result appendFormat:@"%02X", *byte];
    }
    return result;
}

/**
 十六进制转换成NSData
 
 @param hexString   十六进制字符串
 */
+ (NSData *)dataWithHexString:(NSString *)hexString {
    
    hexString = [hexString stringByReplacingOccurrencesOfString:@" " withString:@""];
    hexString = [hexString lowercaseString];
    NSUInteger length = hexString.length;
    if (!length) return nil;
    unichar * buffer = malloc(sizeof(unichar) * length);
    if (!buffer) return nil;
    [hexString getCharacters:buffer range:NSMakeRange(0, length)];
    
    NSMutableData * result = [NSMutableData data];
    unsigned char bytes;
    char str[3] = { '\0', '\0', '\0' };
    int i;
    for (i = 0; i < length / 2; i++) {
        str[0] = buffer[i * 2];
        str[1] = buffer[i * 2 + 1];
        bytes = strtol(str, NULL, 16);
        [result appendBytes:&bytes length:1];
    }
    free(buffer);
    return result;
}


static const char base64EncodingTable[64] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
static const short base64DecodingTable[256] = {
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -1, -1, -2,  -1,  -1, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2,
    -1, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, 62,  -2,  -2, -2, 63,
    52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -2, -2,  -2,  -2, -2, -2,
    -2, 0,  1,  2,  3,  4,  5,  6,  7,  8,  9,  10,  11,  12, 13, 14,
    15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -2,  -2,  -2, -2, -2,
    -2, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36,  37,  38, 39, 40,
    41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -2,  -2,  -2, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2
};

/**
 base64加密生成NSString
 */
- (NSString *)base64EncodedString {
    
    NSUInteger length = self.length;
    if (length == 0) {
        
        return @"";
    }
    
    NSUInteger out_length = ((length + 2) / 3) * 4;
    uint8_t * output = malloc(((out_length + 2) / 3) * 4);
    if (output == NULL) {
        
        return nil;
    }
    
    const char * input = self.bytes;
    NSInteger i, value;
    for (i = 0; i < length; i += 3) {
        value = 0;
        for (NSInteger j = i; j < i + 3; j++) {
            value <<= 8;
            if (j < length) {
                value |= (0xFF & input[j]);
            }
        }
        NSInteger index = (i / 3) * 4;
        output[index + 0] = base64EncodingTable[(value >> 18) & 0x3F];
        output[index + 1] = base64EncodingTable[(value >> 12) & 0x3F];
        output[index + 2] = ((i + 1) < length)
        ? base64EncodingTable[(value >> 6) & 0x3F]
        : '=';
        output[index + 3] = ((i + 2) < length)
        ? base64EncodingTable[(value >> 0) & 0x3F]
        : '=';
    }
    
    NSString * base64 = [[NSString alloc] initWithBytes:output
                                                 length:out_length
                                               encoding:NSASCIIStringEncoding];
    free(output);
    return base64;
}

/**
 通过base64加密的字符串生成NSData
 
 @warning iOS7以上
 @param base64EncodedString  base64加密的字符串.
 */
+ (NSData *)dataWithBase64EncodedString:(NSString *)base64EncodedString {
    
    NSInteger length = base64EncodedString.length;
    const char * string = [base64EncodedString cStringUsingEncoding:NSASCIIStringEncoding];
    if (string  == NULL)
        return nil;
    
    while (length > 0 && string[length - 1] == '=')
        length--;
    
    NSInteger outputLength = length * 3 / 4;
    NSMutableData * data = [NSMutableData dataWithLength:outputLength];
    if (data == nil)
        return nil;
    if (length == 0)
        return data;
    
    uint8_t * output = data.mutableBytes;
    NSInteger inputPoint = 0;
    NSInteger outputPoint = 0;
    while (inputPoint < length) {
        char i0 = string[inputPoint++];
        char i1 = string[inputPoint++];
        char i2 = inputPoint < length ? string[inputPoint++] : 'A';
        char i3 = inputPoint < length ? string[inputPoint++] : 'A';
        
        output[outputPoint++] = (base64DecodingTable[i0] << 2)
        | (base64DecodingTable[i1] >> 4);
        if (outputPoint < outputLength) {
            output[outputPoint++] = ((base64DecodingTable[i1] & 0xf) << 4)
            | (base64DecodingTable[i2] >> 2);
        }
        if (outputPoint < outputLength) {
            output[outputPoint++] = ((base64DecodingTable[i2] & 0x3) << 6)
            | base64DecodingTable[i3];
        }
    }
    return data;
}

/**
 解json生成NSDictionary或者NSArray
 */
- (id)jsonValueDecoded {
    
    NSError * error = nil;
    id value = [NSJSONSerialization JSONObjectWithData:self options:kNilOptions error:&error];
    if (error) {
        
        NSLog(@"jsonValueDecoded error:%@", error);
    }
    return value;
}



@end
