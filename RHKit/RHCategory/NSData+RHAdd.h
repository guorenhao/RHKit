//
//  NSData+RHAdd.h
//  RHKit
//
//  Created by 郭人豪 on 2017/5/14.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (RHAdd)

#pragma mark - hash

/**
 md2加密生成NSData
 */
- (NSData *)md2Data;

/**
 md2加密生成NSString
 */
- (NSString *)md2String;

/**
 md4加密生成NSData
 */
- (NSData *)md4Data;

/**
 md4加密生成NSString
 */
- (NSString *)md4String;

/**
 md5加密生成NSData
 */
- (NSData *)md5Data;

/**
 md5加密生成NSString
 */
- (NSString *)md5String;

/**
 sha1加密生成NSData
 */
- (NSData *)sha1Data;

/**
 sha1加密生成NSString
 */
- (NSString *)sha1String;

/**
 sha224加密生成NSData
 */
- (NSData *)sha224Data;

/**
 sha224加密生成NSString
 */
- (NSString *)sha224String;

/**
 sha256加密生成NSData
 */
- (NSData *)sha256Data;

/**
 sha256加密生成NSString
 */
- (NSString *)sha256String;

/**
 sha384加密生成NSData
 */
- (NSData *)sha384Data;

/**
 sha384加密生成NSString
 */
- (NSString *)sha384String;

/**
 sha512加密生成NSData
 */
- (NSData *)sha512Data;

/**
 sha512加密生成NSString
 */
- (NSString *)sha512String;


/**
 通过key进行md5加密生成NSData
 */
- (NSData *)hmacMD5DataWithKey:(NSData *)key;

/**
 通过key进行md5加密生成NSString
 */
- (NSString *)hmacMD5StringWithKey:(NSString *)key;

/**
 通过key进行sha1加密生成NSData
 */
- (NSData *)hmacSHA1DataWithKey:(NSData *)key;

/**
 通过key进行sha1加密生成NSString
 */
- (NSString *)hmacSHA1StringWithKey:(NSString *)key;

/**
 通过key进行sha224加密生成NSData
 */
- (NSData *)hmacSHA224DataWithKey:(NSData *)key;

/**
 通过key进行sha224加密生成NSString
 */
- (NSString *)hmacSHA224StringWithKey:(NSString *)key;

/**
 通过key进行sha256加密生成NSData
 */
- (NSData *)hmacSHA256DataWithKey:(NSData *)key;

/**
 通过key进行sha256加密生成NSString
 */
- (NSString *)hmacSHA256StringWithKey:(NSString *)key;

/**
 通过key进行sha384加密生成NSData
 */
- (NSData *)hmacSHA384DataWithKey:(NSData *)key;

/**
 通过key进行sha384加密生成NSString
 */
- (NSString *)hmacSHA384StringWithKey:(NSString *)key;

/**
 通过key进行sha512加密生成NSData
 */
- (NSData *)hmacSHA512DataWithKey:(NSData *)key;

/**
 通过key进行sha512加密生成NSString
 */
- (NSString *)hmacSHA512StringWithKey:(NSString *)key;

#pragma mark - encrypt and decrypt

/**
 AES加密生成NSData
 
 @param key key
 @param iv  initialization vector
 */
- (nullable NSData *)aes256EncryptWithKey:(NSData *)key iv:(nullable NSData *)iv;

/**
 AES解密生成NSData
 
 @param key key
 @param iv  initialization vector
 */
- (nullable NSData *)aes256DecryptWithkey:(NSData *)key iv:(nullable NSData *)iv;


#pragma mark - encode and decode

/**
 UTF8加密生成NSString
 */
- (nullable NSString *)utf8String;

/**
 十六进制加密生成NSString 字母大写
 */
- (nullable NSString *)hexString;

/**
 十六进制转换成NSData
 
 @param hexString   十六进制字符串
 */
+ (nullable NSData *)dataWithHexString:(NSString *)hexString;

/**
 base64加密生成NSString
 */
- (nullable NSString *)base64EncodedString;

/**
 通过base64加密的字符串生成NSData
 
 @warning iOS7以上
 @param base64EncodedString  base64加密的字符串.
 */
+ (nullable NSData *)dataWithBase64EncodedString:(NSString *)base64EncodedString;

/**
 解json生成NSDictionary或者NSArray
 */
- (nullable id)jsonValueDecoded;




@end

NS_ASSUME_NONNULL_END
