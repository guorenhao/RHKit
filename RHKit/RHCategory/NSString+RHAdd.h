//
//  NSString+RHAdd.h
//  RHKit
//
//  Created by 郭人豪 on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (RHAdd)

/**
 清空两端空格
 
 @return 清空两端空格之后的字符串
 */
- (NSString *)clearBothEndsSpace;

/**
 清空两端空格和回车
 
 @return 清除之后的字符串
 */
- (NSString *)clearBothEndsSpaceAndReturn;

/**
 清除所有空格
 
 @return 清除空格之后的字符串
 */
- (NSString *)clearAllSpace;

/**
 替换字符串
 
 @param string    要被替换的字符串
 @param newString 替换的新字符串
 @return          替换后的字符串
 */
- (NSString *)replaceString:(NSString *)string withNewString:(NSString *)newString;

/**
 添加字符串
 
 @param string 添加的字符串
 @return       添加之后的字符串
 */
- (NSString *)addString:(NSString *)string;

/**
 移除字符串
 
 @param string 要移除的字符串
 @return       移除之后的字符串
 */
- (NSString *)removeSubString:(NSString *)string;

/**
 转换成NSData
 
 @return 转换成的NSData
 */
- (NSData *)converToData;

/**
 是否全部是字母
 
 @return 是否全部是字母
 */
- (BOOL)isAllLetters;

/**
 是否全部是数字
 
 @return 是否全部是数字
 */
- (BOOL)isAllNumbers;

/**
 是否只有数字和字母
 
 @return 是否只有数字和字母
 */
- (BOOL)isOnlyNumbersAndLetters;

/**
 判断是否为空
 
 @return 是否为空
 */
- (BOOL)isEmpty;

/**
 判断是否是邮箱
 
 @return 是否是邮箱
 */
- (BOOL)isEmail;
/**
 判断是否是手机号
 
 @return 是否是手机号
 */
- (BOOL)isPhoneNumber;

/**
 判断是否是中国移动手机号
 
 @return 是否是中国移动
 */
- (BOOL)isChinaMobile;

/**
 判断是否是中国联通手机号
 
 @return 是否是中国联通
 */
- (BOOL)isChinaUnicom;

/**
 判断是否是中国电信手机号
 
 @return 是否是中国电信
 */
- (BOOL)isChinaTelecom;

/**
 判断手机号的类型
 
 @return 手机号类型
 */
- (NSString *)phoneNumberType;

/**
 判断是否是身份证号
 
 @return 是否是身份证号
 */
- (BOOL)isIdentityCard;

/**
 银行卡格式验证
 
 @return 是否是银行卡
 */
- (BOOL)isBankCard;

/**
 车牌号验证
 
 @return 是否是车牌号
 */
- (BOOL)isCarID;

/**
 判断字符串中是否含有Emoji表情符号
 
 @return 是否含有表情
 */
- (BOOL)containsEmoji;

#pragma mark - time and timeStamp

/**
 通过时间戳差获取时间差
 
 @param second 时间戳差
 @return 时间差
 */
//+ (NSString *)stringOfTimeWithSecond:(NSTimeInterval)second;

//+ (NSString *)stringOfTimeWithTimeStampSecond:(NSTimeInterval)timeStamp;

/**
 当前时间
 
 @return 当前时间 yyyy-MM-dd HH:mm:ss
 */
+ (NSString *)currentTime;

/**
 根据时间戳获取时间
 
 @param timeStamp 时间戳
 @return 时间戳对应时间
 */
//+ (NSString *)stringOfTimeWithTimeStampInt:(NSTimeInterval)timeStamp;

/**
 当前时间的时间戳
 
 @return 当前时间的时间戳
 */
+ (NSString *)currentTimeStamp;


/**
 时间戳转换时间
 
 @return 时间 yyyy-MM-dd HH:mm:ss
 */
- (NSString *)converToTime;

/**
 时间转换时间戳
 
 @return 时间戳
 */
- (NSString *)converToTimeStamp;

#pragma mark - hash

/**
 md2加密生成NSString
 */
- (nullable NSString *)md2String;

/**
 md4加密生成NSString
 */
- (nullable NSString *)md4String;

/**
 md5加密生成NSString
 */
- (nullable NSString *)md5String;

/**
 sha1加密生成NSString
 */
- (nullable NSString *)sha1String;

/**
 sha224加密生成NSString
 */
- (nullable NSString *)sha224String;

/**
 sha256加密生成NSString
 */
- (nullable NSString *)sha256String;

/**
 sha384加密生成NSString
 */
- (nullable NSString *)sha384String;

/**
 sha512加密生成NSString
 */
- (nullable NSString *)sha512String;

/**
 通过key进行md5加密生成NSString
 */
- (nullable NSString *)hmacMD5StringWithKey:(NSString *)key;

/**
 通过key进行sha1加密生成NSString
 */
- (nullable NSString *)hmacSHA1StringWithKey:(NSString *)key;

/**
 通过key进行sha224加密生成NSString
 */
- (nullable NSString *)hmacSHA224StringWithKey:(NSString *)key;

/**
 通过key进行sha256加密生成NSString
 */
- (nullable NSString *)hmacSHA256StringWithKey:(NSString *)key;

/**
 通过key进行sha384加密生成NSString
 */
- (nullable NSString *)hmacSHA384StringWithKey:(NSString *)key;

/**
 通过key进行sha512加密生成NSString
 */
- (nullable NSString *)hmacSHA512StringWithKey:(NSString *)key;

#pragma mark - encode and decode

/**
 base64加密生成NSString
 */
- (nullable NSString *)base64EncodedString;

/**
 base64解密生成NSString
 */
- (nullable NSString *)base64DecodedString;

/**
 通过base64加密的字符串生成NSString
 
 @warning iOS7以上
 @param base64EncodedString  base64加密的字符串.
 */
+ (nullable NSString *)stringWithBase64EncodedString:(NSString *)base64EncodedString;



@end

NS_ASSUME_NONNULL_END

