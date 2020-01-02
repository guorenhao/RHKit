//
//  UIWindow+RHAdd.m
//  RHKit
//
//  Created by Abner_G on 2018/1/24.
//  Copyright © 2018年 Abner_G. All rights reserved.
//

#import "UIWindow+RHAdd.h"

@implementation UIWindow (RHAdd)

/**
 获取当前vc

 @return 当前vc
 */
+ (UIViewController *)currentViewController {
    
    UIViewController * topViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    while (true) {
        
        if (topViewController.presentedViewController) {
            
            topViewController = topViewController.presentedViewController;
        } else if ([topViewController isKindOfClass:[UISplitViewController class]] && ((UISplitViewController *)topViewController).viewControllers.count > 0) {
            
            topViewController = ((UISplitViewController *)topViewController).viewControllers.lastObject;
        } else if ([topViewController isKindOfClass:[UINavigationController class]] && [(UINavigationController*)topViewController topViewController]) {
            
            topViewController = [(UINavigationController *)topViewController topViewController];
        } else if ([topViewController isKindOfClass:[UITabBarController class]]) {
            
            UITabBarController *tab = (UITabBarController *)topViewController;
            topViewController = tab.selectedViewController;
        } else {
            
            break;
        }
    }
    return topViewController;
}

/// 获取当前导航vc
+ (UINavigationController *)currentNavigationController {
    
    UIViewController * rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    if ([rootVC isKindOfClass:[UITabBarController class]]) {
        
        UIViewController * selectVC = [(UITabBarController *)rootVC selectedViewController];
        if ([selectVC isKindOfClass:[UINavigationController class]]) {
            
            return (UINavigationController *)selectVC;
        } else {
            
            return [[UINavigationController alloc] initWithRootViewController:selectVC];
        }
    } else if ([rootVC isKindOfClass:[UINavigationController class]]) {
           
        return (UINavigationController *)rootVC;
    }
    return [[UINavigationController alloc] initWithRootViewController:rootVC];
}

@end
