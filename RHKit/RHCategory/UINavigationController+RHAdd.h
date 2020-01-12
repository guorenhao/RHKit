//
//  UINavigationController+RHAdd.h
//  RHKit
//
//  Created by Abner_G on 2020/1/12.
//  Copyright © 2020 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (RHAdd)

/// rootVC
@property (nonatomic, strong, nullable, readonly) UIViewController * rootViewController;

/// 根据名字获取 Navigation 中的 VC
/// @param name VC名字
- (nullable UIViewController *)viewControllerWithName:(NSString *)name;

/// 返回指定名字的 VC
/// @param name     VC名字
/// @param animated 是否动画
- (void)popToViewControllerWithName:(NSString *)name animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
