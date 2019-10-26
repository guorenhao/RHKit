//
//  NSString+RHAdd.m
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "NSString+RHAdd.h"
#import "NSData+RHAdd.h"

@implementation NSString (RHAdd)

/**
 清空两端空格
 
 @return 清空两端空格之后的字符串
 */
- (NSString *)clearBothEndsSpace {
    
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];;
}

/**
 清空两端空格和回车
 
 @return 清除之后的字符串
 */
- (NSString *)clearBothEndsSpaceAndReturn {
    
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];;
}

/**
 清除所有空格
 
 @return 清除空格之后的字符串
 */
- (NSString *)clearAllSpace {
    
    return [self replaceString:@" " withNewString:@""];
}

/**
 替换字符串
 
 @param string    要被替换的字符串
 @param newString 替换的新字符串
 @return          替换后的字符串
 */
- (NSString *)replaceString:(NSString *)string withNewString:(NSString *)newString {
    
    return [self stringByReplacingOccurrencesOfString:string withString:newString];
}

/**
 添加字符串
 
 @param string 添加的字符串
 @return       添加之后的字符串
 */
- (NSString *)addString:(NSString *)string {
    
    if (string == nil || string.length == 0) {
        
        return self;
    }
    return [self stringByAppendingString:string];
}

/**
 移除字符串
 
 @param string 要移除的字符串
 @return       移除之后的字符串
 */
- (NSString *)removeSubString:(NSString *)string {
    
    if ([self containsString:string]) {
        
        return [self stringByReplacingOccurrencesOfString:string withString:@""];
    }
    return self;
}

/**
 转换成NSData
 
 @return 转换成的NSData
 */
- (NSData *)transformToData {
    
    return [self dataUsingEncoding:NSUTF8StringEncoding];
}

/**
 是否全部是字母
 
 @return 是否全部是字母
 */
- (BOOL)isAllLetters {
    
    //    NSCharacterSet * letterCharacterSet = [[NSCharacterSet letterCharacterSet] invertedSet];
    //    return [self rangeOfCharacterFromSet:letterCharacterSet].location == NSNotFound;
    
    NSString * regex = @"^[A-Za-z]+$";
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self];
}

/**
 是否全部是数字
 
 @return 是否全部是数字
 */
- (BOOL)isAllNumbers {
    
    //    NSCharacterSet * numbersCharacterSet = [[NSCharacterSet characterSetWithCharactersInString:@"0123456789"] invertedSet];
    //    return [self rangeOfCharacterFromSet:numbersCharacterSet].location == NSNotFound;
    
    NSString * regex = @"^-?\\d+.?\\d?";
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self];
}

/**
 是否只有数字和字母
 
 @return 是否只有数字和字母
 */
- (BOOL)isOnlyNumbersAndLetters {
    
    //    NSCharacterSet * characterSet = [[NSCharacterSet alphanumericCharacterSet] invertedSet];
    //    return [self rangeOfCharacterFromSet:characterSet].location == NSNotFound;
    
    NSString * regex = @"^[A-Za-z0-9_]+$";
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self];
}

/**
 判断是否为空
 
 @return 是否为空
 */
- (BOOL)isEmpty {
    
    return self == nil || self.length == 0;
}

/**
 判断是否是邮箱
 
 @return 是否是邮箱
 */
- (BOOL)isEmail {
    //@"^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$"
    NSString * regex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self];
}

/**
 判断是否是手机号
 
 @return 是否是手机号
 */
- (BOOL)isPhoneNumber {
    
    if (self.length != 11) {
        
        return NO;
    }
    /**
     * 手机号码:
     * 13[0-9], 14[5-8], 15[0-3, 5-9], 16[6], 17[0, 4, 6, 7, 8], 18[0-9], 19[8-9]
     */
    NSString * regex = @"^1(3[0-9]|4[0-9]|5[0-9]|6[0-9]|7[0-9]|8[0-9]|9[0-9])\\d{8}$";
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self];
}

/**
 判断是否是中国移动手机号
 
 @return 是否是中国移动
 */
- (BOOL)isChinaMobile {
    
    if (self.length != 11) {
        
        return NO;
    }
    /**
     * 中国移动：China Mobile
     * 134,135,136,137,138,139,150,151,152,157,158,159,182,183,184,187,188,147,178,1705
     */
    NSString * regex = @"(^1(3[4-9]|4[7]|5[0-27-9]|7[8]|8[2-478])\\d{8}$)|(^1705\\d{7}$)";
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self];
}

/**
 判断是否是中国联通手机号
 
 @return 是否是中国联通
 */
- (BOOL)isChinaUnicom {
    
    if (self.length != 11) {
        
        return NO;
    }
    /**
     * 中国联通：China Unicom
     * 130,131,132,155,156,185,186,145,176,1709
     */
    NSString * regex = @"(^1(3[0-2]|4[5]|5[56]|7[6]|8[56])\\d{8}$)|(^1709\\d{7}$)";
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self];
}

/**
 判断是否是中国电信手机号
 
 @return 是否是中国电信
 */
- (BOOL)isChinaTelecom {
    
    if (self.length != 11) {
        
        return NO;
    }
    /**
     * 中国电信：China Telecom
     * 133,153,180,181,189,177,1700
     */
    NSString * regex = @"(^1(33|53|77|8[019])\\d{8}$)|(^1700\\d{7}$)";
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self];
}

/**
 判断手机号的类型
 
 @return 手机号类型
 */
- (NSString *)phoneNumberType {
    
    return [self isChinaMobile] ? @"中国移动" : ([self isChinaUnicom] ? @"中国联通" : ([self isChinaTelecom] ? @"中国电信" : @"未知"));
}

/**
 判断是否是身份证号
 
 @return 是否是身份证号
 */
- (BOOL)isIdentityCard {
    
    // 去除空格长度不为18的都排除掉
    NSString * str = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if (str.length != 18) {
        
        return NO;
    }
    
    // 校验格式
    NSString * regex = @"^(^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$)|(^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])((\\d{4})|\\d{3}[Xx])$)$";
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    BOOL flag = [predicate evaluateWithObject:self];
    
    if (!flag) {
        
        // 格式错误
        return flag;
    } else {
        
        // 格式正确在判断是否合法
        // 将前17位加权因子保存在数组里
        NSArray * idCardWiArray = @[@"7", @"9", @"10", @"5", @"8", @"4", @"2", @"1", @"6", @"3", @"7", @"9", @"10", @"5", @"8", @"4", @"2"];
        // 这是除以11后，可能产生的11位余数、验证码，也保存成数组
        NSArray * idCardYArray = @[@"1", @"0", @"10", @"9", @"8", @"7", @"6", @"5", @"4", @"3", @"2"];
        
        // 用来保存前17位各自乖以加权因子后的总和
        NSInteger idCardWiSum = 0;
        for (int i = 0; i < 17; i++) {
            
            NSInteger subStrIndex = [[self substringWithRange:NSMakeRange(i, 1)] integerValue];
            NSInteger idCardWiIndex = [[idCardWiArray objectAtIndex:i] integerValue];
            idCardWiSum += subStrIndex * idCardWiIndex;
        }
        
        // 计算出校验码所在数组的位置
        NSInteger idCardMod=idCardWiSum % 11;
        
        //得到最后一位身份证号码
        NSString * idCardLast= [self substringWithRange:NSMakeRange(17, 1)];
        
        //如果等于2，则说明校验码是10，身份证号码最后一位应该是X
        if (idCardMod == 2) {
            
            if([idCardLast isEqualToString:@"X"] || [idCardLast isEqualToString:@"x"]) {
                
                return YES;
            } else {
                
                return NO;
            }
        } else {
            
            // 用计算出的验证码与最后一位身份证号码匹配，如果一致，说明通过，否则是无效的身份证号码
            if([idCardLast isEqualToString:[idCardYArray objectAtIndex:idCardMod]]) {
                
                return YES;
            } else {
                
                return NO;
            }
        }
    }
}

/**
 银行卡格式验证
 
 @return 是否是银行卡
 */
- (BOOL)isBankCard {
    
    NSString * str = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if (str.length < 16) {
        
        return NO;
    }
    NSInteger oddsum = 0;     //奇数求和
    NSInteger evensum = 0;    //偶数求和
    NSInteger allsum = 0;
    NSInteger cardNoLength = str.length;
    // 取了最后一位数
    NSInteger lastNum = [[str substringFromIndex:cardNoLength-1] intValue];
    //测试的是除了最后一位数外的其他数字
    str = [str substringToIndex:cardNoLength - 1];
    for (NSInteger i = cardNoLength -1 ; i >= 1; i--) {
        
        NSString * tmpString = [str substringWithRange:NSMakeRange(i-1, 1)];
        NSInteger tmpVal = [tmpString integerValue];
        if (cardNoLength % 2 ==1 ) {//卡号位数为奇数
            if((i % 2) == 0){//偶数位置
                tmpVal *= 2;
                if(tmpVal >= 10)
                    tmpVal -= 9;
                evensum += tmpVal;
            } else {//奇数位置
                oddsum += tmpVal;
            }
        }else{
            if((i % 2) == 1){
                tmpVal *= 2;
                if(tmpVal >= 10)
                    tmpVal -= 9;
                evensum += tmpVal;
            }else{
                oddsum += tmpVal;
            }
        }
    }
    allsum = oddsum + evensum;
    allsum += lastNum;
    if((allsum % 10) == 0) {
        
        return YES;
    } else {
        
        return NO;
    }
}

/**
 车牌号验证
 
 @return 是否是车牌号
 */
- (BOOL)isCarID {
    
    NSString * str = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if (str.length != 7) {
        
        return NO;
    }
    NSString * regex = @"^[\u4e00-\u9fa5]{1}[a-hj-zA-HJ-Z]{1}[a-hj-zA-HJ-Z_0-9]{4}[a-hj-zA-HJ-Z_0-9_\u4e00-\u9fa5]$";
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self];
    
    return YES;
}

/**
 判断字符串中是否含有Emoji表情符号
 
 @return 是否含有表情
 */
- (BOOL)containsEmoji {
    
    __block BOOL returnValue = NO;
    [self enumerateSubstringsInRange:NSMakeRange(0, self.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
        
        const unichar hs = [substring characterAtIndex:0];
        if (0xd800 <= hs && hs <= 0xdbff) {
            
            if (substring.length > 1) {
                
                const unichar ls = [substring characterAtIndex:1];
                const int uc = ((hs - 0xd800) * 0x400) + (ls - 0xdc00) + 0x10000;
                if (0x1d000 <= uc && uc <= 0x1f77f) {
                    returnValue = YES;
                }
            }
        } else if (substring.length > 1) {
            
            const unichar ls = [substring characterAtIndex:1];
            if (ls == 0x20e3) {
                
                returnValue = YES;
            }
        } else {
            
            if (0x2100 <= hs && hs <= 0x27ff) {
                
                returnValue = YES;
            } else if (0x2B05 <= hs && hs <= 0x2b07) {
                
                returnValue = YES;
            } else if (0x2934 <= hs && hs <= 0x2935) {
                
                returnValue = YES;
            } else if (0x3297 <= hs && hs <= 0x3299) {
                
                returnValue = YES;
            } else if (hs == 0xa9 || hs == 0xae || hs == 0x303d || hs == 0x3030 || hs == 0x2b55 || hs == 0x2b1c || hs == 0x2b1b || hs == 0x2b50) {
                
                returnValue = YES;
            }
        }
    }];
    return returnValue;
}

/**
判断字符串中是否含有中文

@return 是否含有中文
*/
- (BOOL)containsChinese {
    
    BOOL result = NO;
    for (int i = 0; i < self.length; i++) {
        
        NSRange range = NSMakeRange(i, 1);
        NSString * subStr = [self substringWithRange:range];
        const char * cSubStr = [subStr UTF8String];
        if (strlen(cSubStr) >= 3) {
            
            result = YES;
            break;
        }
    }
    return result;
}

#pragma mark - time and timeStamp

/**
 获取指定日期
 
 @param date   时间
 @param format 时间格式
 @return       指定日期
 */
+ (NSString *)stringWithDate:(NSDate *)date format:(NSString *)format {
    
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    return [formatter stringFromDate:date];
}

/**
 获取指定日期
 
 @param timeStamp 时间戳
 @param format    时间格式
 @return          指定日期
 */
+ (NSString *)stringWithTimeStamp:(NSTimeInterval)timeStamp format:(NSString *)format {
    
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    return [formatter stringFromDate:[NSDate dateWithTimeIntervalSince1970:timeStamp]];
}

/**
 根据时间戳获取时间
 
 @param timeStamp 时间戳
 @return 时间戳对应时间 yyyy-MM-dd HH:mm:ss
 */
+ (NSString *)stringWithTimeStamp:(NSTimeInterval)timeStamp {
    
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [formatter stringFromDate:[NSDate dateWithTimeIntervalSince1970:timeStamp]];
}

/**
 当前时间
 
 @return 当前时间  yyyy-MM-dd HH:mm:ss
 */
+ (NSString *)currentTime {
    
    NSDate * currentDate = [NSDate date];
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString * currentTime = [formatter stringFromDate:currentDate];
    return currentTime;
}

/**
 当前时间的时间戳
 
 @return 当前时间的时间戳
 */
+ (NSString *)currentTimeStamp {
    
    return [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
}

/**
 时间戳转换时间
 
 @return 时间 YYYY-mm-dd hh:MM:ss
 */
- (NSString *)transformToTime {
    
    NSDate * date = [NSDate dateWithTimeIntervalSince1970:[self intValue]];
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [formatter stringFromDate:date];
}


/**
 时间戳转换时间

 @param format 时间格式
 @return       指定格式时间
 */
- (NSString *)transformToTimeWithFormat:(NSString *)format {
    
    NSDate * date = [NSDate dateWithTimeIntervalSince1970:[self intValue]];
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    return [formatter stringFromDate:date];
}

/**
 时间转换时间戳
 
 @return 时间戳
 */
- (NSString *)transformToTimeStamp {
    
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"Asia/Shanghai"]];
    NSDate * date = [formatter dateFromString:self];
    return [NSString stringWithFormat:@"%ld",(long)[date timeIntervalSince1970]];
}

/**
 时间转换时间戳

 @param farmat 时间格式
 @return       时间戳
 */
- (NSString *)transformToTimeStampWithFormat:(NSString *)farmat {
    
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:farmat];
    [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"Asia/Shanghai"]];
    NSDate * date = [formatter dateFromString:self];
    return [NSString stringWithFormat:@"%ld",(long)[date timeIntervalSince1970]];
}

/**
 指定时间的时间戳

 @param date 时间
 @return     时间戳
 */
- (NSString *)timeStampWithDate:(NSDate *)date {
    
    return [NSString stringWithFormat:@"%ld",(long)[date timeIntervalSince1970]];
}

#pragma mark - hash

/**
 md2加密生成NSString
 */
- (NSString *)md2String {
    
    return [[self dataUsingEncoding:NSUTF8StringEncoding] md2String];
}

/**
 md4加密生成NSString
 */
- (NSString *)md4String {
    
    return [[self dataUsingEncoding:NSUTF8StringEncoding] md4String];
}

/**
 md5加密生成NSString
 */
- (NSString *)md5String {
    
    return [[self dataUsingEncoding:NSUTF8StringEncoding] md5String];
}

/**
 sha1加密生成NSString
 */
- (NSString *)sha1String {
    
    return [[self dataUsingEncoding:NSUTF8StringEncoding] sha1String];
}

/**
 sha224加密生成NSString
 */
- (NSString *)sha224String {
    
    return [[self dataUsingEncoding:NSUTF8StringEncoding] sha224String];
}

/**
 sha256加密生成NSString
 */
- (NSString *)sha256String {
    
    return [[self dataUsingEncoding:NSUTF8StringEncoding] sha256String];
}

/**
 sha384加密生成NSString
 */
- (NSString *)sha384String {
    
    return [[self dataUsingEncoding:NSUTF8StringEncoding] sha384String];
}

/**
 sha512加密生成NSString
 */
- (NSString *)sha512String {
    
    return [[self dataUsingEncoding:NSUTF8StringEncoding] sha512String];
}

/**
 通过key进行md5加密生成NSString
 */
- (NSString *)hmacMD5StringWithKey:(NSString *)key {
    
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hmacMD5StringWithKey:key];
}

/**
 通过key进行sha1加密生成NSString
 */
- (NSString *)hmacSHA1StringWithKey:(NSString *)key {
    
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hmacSHA1StringWithKey:key];
}

/**
 通过key进行sha224加密生成NSString
 */
- (NSString *)hmacSHA224StringWithKey:(NSString *)key {
    
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hmacSHA224StringWithKey:key];
}

/**
 通过key进行sha256加密生成NSString
 */
- (NSString *)hmacSHA256StringWithKey:(NSString *)key {
    
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hmacSHA256StringWithKey:key];
}

/**
 通过key进行sha384加密生成NSString
 */
- (NSString *)hmacSHA384StringWithKey:(NSString *)key {
    
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hmacSHA384StringWithKey:key];
}

/**
 通过key进行sha512加密生成NSString
 */
- (NSString *)hmacSHA512StringWithKey:(NSString *)key {
    
    return [[self dataUsingEncoding:NSUTF8StringEncoding] hmacSHA512StringWithKey:key];
}


#pragma mark - encode and decode

/**
 base64加密生成NSString
 */
- (NSString *)base64EncodedString {
    
    return [[self dataUsingEncoding:NSUTF8StringEncoding] base64EncodedString];
}

/**
 base64解密生成NSString
 */
- (NSString *)base64DecodedString {
    
    NSData * data = [NSData dataWithBase64EncodedString:self];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

/**
 通过base64加密的字符串生成NSString
 
 @warning iOS7以上
 @param base64EncodedString  base64加密的字符串.
 */
+ (NSString *)stringWithBase64EncodedString:(NSString *)base64EncodedString {
    
    NSData * data = [NSData dataWithBase64EncodedString:base64EncodedString];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}





@end

