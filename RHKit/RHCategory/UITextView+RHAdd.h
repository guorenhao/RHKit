//
//  UITextView+RHAdd.h
//  RHKit
//
//  Created by Abner_G on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextView (RHAdd)

@property (nonatomic, readonly) UILabel * placeholderLabel;

@property (nonatomic, strong) IBInspectable NSString * placeholder;
@property (nonatomic, strong) NSAttributedString * attributedPlaceholder;
@property (nonatomic, strong) IBInspectable UIColor * placeholderColor;

+ (UIColor *)defaultPlaceholderColor;

@end

NS_ASSUME_NONNULL_END
