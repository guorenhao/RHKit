//
//  NSString+RHAdd.h
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

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

/// 清除所有空格
- (NSString *)clearAllSpace;

/// 清除所有空格和回车
- (NSString *)clearAllSpaceAndReturn;

/**
 替换字符串
 
 @param string    要被替换的字符串
 @param newString 替换的新字符串
 @return          替换后的字符串
 */
- (NSString *)replaceString:(NSString *)string newString:(NSString *)newString;

/// 替换字符串
/// @param range     要被替换的字符串位置
/// @param newString 替换的新字符串
- (NSString *)replaceStringInRange:(NSRange)range newString:(NSString *)newString;

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
- (BOOL)isChinaMobile __attribute__((deprecated("此方法弃用，手机号不再做运营商判断")));

/**
 判断是否是中国联通手机号
 
 @return 是否是中国联通
 */
- (BOOL)isChinaUnicom __attribute__((deprecated("此方法弃用，手机号不再做运营商判断")));

/**
 判断是否是中国电信手机号
 
 @return 是否是中国电信
 */
- (BOOL)isChinaTelecom __attribute__((deprecated("此方法弃用，手机号不再做运营商判断")));

/**
 判断手机号的类型
 
 @return 手机号类型
 */
- (NSString *)phoneNumberType __attribute__((deprecated("此方法弃用，手机号不再做运营商判断")));

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

/**
判断字符串中是否含有中文

@return 是否含有中文
*/
- (BOOL)containsChinese;

#pragma mark - time and timeStamp

/// 获取指定日期
/// @param date   日期
/// @param format 日期格式
+ (NSString *)dateStringWithDate:(NSDate *)date format:(NSString *)format;

/// 获取指定日期
/// @param timeStamp 时间戳
/// @param format    日期格式
+ (NSString *)dateStringWithTimeStamp:(NSTimeInterval)timeStamp format:(NSString *)format;

/// 获取指定日期 对应日期格式 yyyy-MM-dd HH:mm:ss
/// @param timeStamp 时间戳
+ (NSString *)dateStringWithTimeStamp:(NSTimeInterval)timeStamp;

/// 获取当前指定日期
/// @param format 日期格式
+ (NSString *)dateStringWithFormat:(NSString *)format;

/// 当前日期 yyyy-MM-dd HH:mm:ss
+ (NSString *)dateString;

/// 指定日期的时间戳
/// @param date 日期
+ (NSString *)timeStampStringWithDate:(NSDate *)date;

/// 当前日期的时间戳 --> 10位精确到秒
+ (NSString *)timeStampString;

/// 指定日期的农历月
/// @param date 日期
+ (NSString *)lunarMonthWithDate:(NSDate *)date;

/// 当前日期的农历月
+ (NSString *)lunarMonth;

/// 指定日期的农历日
/// @param date 日期
+ (NSString *)lunarDayWithDate:(NSDate *)date;

/// 当前日期的农历日
+ (NSString *)lunarDay;


/// 时间戳转换日期 yyyy-MM-dd HH:mm:ss
- (NSString *)dateString;

/// 时间戳转换日期
/// @param format 日期格式
- (NSString *)dateStringWithFormat:(NSString *)format;

/// 日期转换时间戳 yyyy-MM-dd HH:mm:ss --> 10位精确到秒
- (NSString *)timeStampString;

/// 日期转换时间戳  --> 10位精确到秒
/// @param farmat 日期格式
- (NSString *)timeStampStringWithFormat:(NSString *)farmat;

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

#pragma mark - transform

/// 解json生成对象
- (nullable id)jsonObject;

/// 转换成NSData
- (nullable NSData *)dataValue;

#pragma mark - attributed

/// 属性字符串
/// @param font        字体
/// @param lineSpacing 行间距
- (NSMutableAttributedString *)attributedStringWithFont:(UIFont *)font lineSpacing:(CGFloat)lineSpacing;

/// 属性字符串
/// @param font          字体
/// @param lineBreakMode 换行打断模式
- (NSMutableAttributedString *)attributedStringWithFont:(UIFont *)font lineBreakMode:(NSLineBreakMode)lineBreakMode;

/// 属性字符串
/// @param font          字体
/// @param strokeWidth   重影宽
- (NSMutableAttributedString *)attributedStringWithFont:(UIFont *)font strokeWidth:(CGFloat)strokeWidth;

/// 属性字符串
/// @param font          字体
/// @param alignment     样式
- (NSMutableAttributedString *)attributedStringWithFont:(UIFont *)font alignment:(NSTextAlignment)alignment;

/// 属性字符串
/// @param font          字体
/// @param lineSpacing   行间距
/// @param lineBreakMode 换行打断模式
- (NSMutableAttributedString *)attributedStringWithFont:(UIFont *)font lineSpacing:(CGFloat)lineSpacing lineBreakMode:(NSLineBreakMode)lineBreakMode;

/// 属性字符串
/// @param font          字体
/// @param lineSpacing   行间距
/// @param strokeWidth   重影宽
- (NSMutableAttributedString *)attributedStringWithFont:(UIFont *)font lineSpacing:(CGFloat)lineSpacing strokeWidth:(CGFloat)strokeWidth;

/// 属性字符串
/// @param font          字体
/// @param lineSpacing   行间距
/// @param alignment     样式
- (NSMutableAttributedString *)attributedStringWithFont:(UIFont *)font lineSpacing:(CGFloat)lineSpacing alignment:(NSTextAlignment)alignment;

/// 属性字符串
/// @param font          字体
/// @param lineSpacing   行间距
/// @param strokeWidth   重影宽
/// @param alignment     样式
- (NSMutableAttributedString *)attributedStringWithFont:(UIFont *)font lineSpacing:(CGFloat)lineSpacing strokeWidth:(CGFloat)strokeWidth alignment:(NSTextAlignment)alignment;

/// 属性字符串
/// @param font          字体
/// @param lineSpacing   行间距
/// @param lineBreakMode 换行打断模式
/// @param strokeWidth   重影宽
/// @param alignment     样式
- (NSMutableAttributedString *)attributedStringWithFont:(UIFont *)font lineSpacing:(CGFloat)lineSpacing lineBreakMode:(NSLineBreakMode)lineBreakMode strokeWidth:(CGFloat)strokeWidth alignment:(NSTextAlignment)alignment;

@end

NS_ASSUME_NONNULL_END

