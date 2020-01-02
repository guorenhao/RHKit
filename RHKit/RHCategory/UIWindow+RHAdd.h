//
//  UIWindow+RHAdd.h
//  RHKit
//
//  Created by Abner_G on 2018/1/24.
//  Copyright © 2018年 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIWindow (RHAdd)

/**
 获取当前vc
 
 @return 当前vc
 */
+ (UIViewController *)currentViewController;

/// 获取当前导航vc
+ (UINavigationController *)currentNavigationController;

@end
