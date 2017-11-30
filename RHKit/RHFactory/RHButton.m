//
//  RHButton.m
//  RHKit
//
//  Created by 郭人豪 on 2017/5/12.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "RHButton.h"

#define   ButtonFont         [UIFont systemFontOfSize:16]
#define   ButtonTitleColor   [UIColor blackColor]
@implementation RHButton

/**
 对象方法创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitle      选中状态文字
 @param selectTitleColor 选中状态文字颜色
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor selectTitle:(NSString *)selectTitle selectTitleColor:(UIColor *)selectTitleColor font:(UIFont *)font target:(nullable id)target action:(SEL)action {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.titleLabel.font = font;
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        [self setTitle:selectTitle forState:UIControlStateSelected];
        [self setTitleColor:selectTitleColor forState:UIControlStateSelected];
        [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

/**
 对象方法创建对象
 
 @param frame            frame
 @param image            普通状态图片
 @param selectImage      选中状态图片
 @param bgImage          普通状态背景图片
 @param bgSelectImage    选中状态背景图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image selectImage:(UIImage *)selectImage bgImage:(UIImage *)bgImage bgSelectImage:(UIImage *)bgSelectImage target:(nullable id)target action:(SEL)action {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        if (image) {
            
            [self setImage:image forState:UIControlStateNormal];
        }
        if (selectImage) {
            
            [self setImage:selectImage forState:UIControlStateSelected];
        }
        if (bgImage) {
            
            [self setBackgroundImage:bgImage forState:UIControlStateNormal];
        }
        if (bgSelectImage) {
            
            [self setBackgroundImage:bgSelectImage forState:UIControlStateSelected];
        }
        [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

#pragma mark - 文字

/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitle      选中状态文字
 @param selectTitleColor 选中状态文字颜色
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor selectTitle:(NSString *)selectTitle selectTitleColor:(UIColor *)selectTitleColor font:(UIFont *)font target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:frame title:title titleColor:titleColor selectTitle:selectTitle selectTitleColor:selectTitleColor font:font target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitle      选中状态文字
 @param selectTitleColor 选中状态文字颜色
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor selectTitle:(NSString *)selectTitle selectTitleColor:(UIColor *)selectTitleColor target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:frame title:title titleColor:titleColor selectTitle:selectTitle selectTitleColor:selectTitleColor font:ButtonFont target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param selectTitle      选中状态文字
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title selectTitle:(NSString *)selectTitle font:(UIFont *)font target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:frame title:title titleColor:ButtonTitleColor selectTitle:selectTitle selectTitleColor:ButtonTitleColor font:font target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param selectTitle      选中状态文字
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title selectTitle:(NSString *)selectTitle target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:frame title:title titleColor:ButtonTitleColor selectTitle:selectTitle selectTitleColor:ButtonTitleColor font:ButtonFont target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitleColor 选中状态文字颜色
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor selectTitleColor:(UIColor *)selectTitleColor font:(UIFont *)font target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:frame title:title titleColor:titleColor selectTitle:title selectTitleColor:selectTitleColor font:font target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitleColor 选中状态文字颜色
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor selectTitleColor:(UIColor *)selectTitleColor target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:frame title:title titleColor:titleColor selectTitle:title selectTitleColor:selectTitleColor font:ButtonFont target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:frame title:title titleColor:titleColor selectTitle:title selectTitleColor:titleColor font:font target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:frame title:title titleColor:titleColor selectTitle:title selectTitleColor:titleColor font:ButtonFont target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param frame            frame
 @param title            普通状态文字
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:frame title:title titleColor:ButtonTitleColor selectTitle:title selectTitleColor:ButtonTitleColor font:ButtonFont target:target action:action];
    return button;
}

#pragma mark - 文字 no frame

/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitle      选中状态文字
 @param selectTitleColor 选中状态文字颜色
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor selectTitle:(NSString *)selectTitle selectTitleColor:(UIColor *)selectTitleColor font:(UIFont *)font target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:CGRectZero title:title titleColor:titleColor selectTitle:selectTitle selectTitleColor:selectTitleColor font:font target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitle      选中状态文字
 @param selectTitleColor 选中状态文字颜色
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor selectTitle:(NSString *)selectTitle selectTitleColor:(UIColor *)selectTitleColor target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:CGRectZero title:title titleColor:titleColor selectTitle:selectTitle selectTitleColor:selectTitleColor font:ButtonFont target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param selectTitle      选中状态文字
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title selectTitle:(NSString *)selectTitle font:(UIFont *)font target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:CGRectZero title:title titleColor:ButtonTitleColor selectTitle:selectTitle selectTitleColor:ButtonTitleColor font:font target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param selectTitle      选中状态文字
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title selectTitle:(NSString *)selectTitle target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:CGRectZero title:title titleColor:ButtonTitleColor selectTitle:selectTitle selectTitleColor:ButtonTitleColor font:ButtonFont target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitleColor 选中状态文字颜色
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor selectTitleColor:(UIColor *)selectTitleColor font:(UIFont *)font target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:CGRectZero title:title titleColor:titleColor selectTitle:title selectTitleColor:selectTitleColor font:font target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param selectTitleColor 选中状态文字颜色
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor selectTitleColor:(UIColor *)selectTitleColor target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:CGRectZero title:title titleColor:titleColor selectTitle:title selectTitleColor:selectTitleColor font:ButtonFont target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param font             文字字号
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:CGRectZero title:title titleColor:titleColor selectTitle:title selectTitleColor:titleColor font:font target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param titleColor       普通状态文字颜色
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:CGRectZero title:title titleColor:titleColor selectTitle:title selectTitleColor:titleColor font:ButtonFont target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param title            普通状态文字
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithTitle:(NSString *)title target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:CGRectZero title:title titleColor:ButtonTitleColor selectTitle:title selectTitleColor:ButtonTitleColor font:ButtonFont target:target action:action];
    return button;
}


#pragma mark - 图片

/**
 类方法快速创建对象
 
 @param frame            frame
 @param image            普通状态图片
 @param selectImage      选中状态图片
 @param bgImage          普通状态背景图片
 @param bgSelectImage    选中状态背景图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame image:(UIImage *)image selectImage:(UIImage *)selectImage bgImage:(UIImage *)bgImage bgSelectImage:(UIImage *)bgSelectImage target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:frame image:image selectImage:selectImage bgImage:bgImage bgSelectImage:bgSelectImage target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param frame            frame
 @param image            普通状态图片
 @param selectImage      选中状态图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame image:(UIImage *)image selectImage:(UIImage *)selectImage target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:frame image:image selectImage:selectImage bgImage:nil bgSelectImage:nil target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param frame            frame
 @param image            普通状态图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame image:(UIImage *)image target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:frame image:image selectImage:image bgImage:nil bgSelectImage:nil target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param frame            frame
 @param bgImage          普通状态背景图片
 @param bgSelectImage    选中状态背景图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame bgImage:(UIImage *)bgImage bgSelectImage:(UIImage *)bgSelectImage target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:frame image:nil selectImage:nil bgImage:bgImage bgSelectImage:bgSelectImage target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param frame            frame
 @param bgImage          普通状态背景图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithFrame:(CGRect)frame bgImage:(UIImage *)bgImage target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:frame image:nil selectImage:nil bgImage:bgImage bgSelectImage:bgImage target:target action:action];
    return button;
}

#pragma mark - 图片 no frame

/**
 类方法快速创建对象
 
 @param image            普通状态图片
 @param selectImage      选中状态图片
 @param bgImage          普通状态背景图片
 @param bgSelectImage    选中状态背景图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithImage:(UIImage *)image selectImage:(UIImage *)selectImage bgImage:(UIImage *)bgImage bgSelectImage:(UIImage *)bgSelectImage target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:CGRectZero image:image selectImage:selectImage bgImage:bgImage bgSelectImage:bgSelectImage target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param image            普通状态图片
 @param selectImage      选中状态图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithImage:(UIImage *)image selectImage:(UIImage *)selectImage target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:CGRectZero image:image selectImage:selectImage bgImage:nil bgSelectImage:nil target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param image            普通状态图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithImage:(UIImage *)image target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:CGRectZero image:image selectImage:image bgImage:nil bgSelectImage:nil target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param bgImage          普通状态背景图片
 @param bgSelectImage    选中状态背景图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithBgImage:(UIImage *)bgImage bgSelectImage:(UIImage *)bgSelectImage target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:CGRectZero image:nil selectImage:nil bgImage:bgImage bgSelectImage:bgSelectImage target:target action:action];
    return button;
}
/**
 类方法快速创建对象
 
 @param bgImage          普通状态背景图片
 @param target           监听对象
 @param action           事件方法
 @return                 button 对象
 */
+ (RHButton *)buttonWithBgImage:(UIImage *)bgImage target:(nullable id)target action:(SEL)action {
    
    RHButton * button = [[RHButton alloc] initWithFrame:CGRectZero image:nil selectImage:nil bgImage:bgImage bgSelectImage:bgImage target:target action:action];
    return button;
}


@end

