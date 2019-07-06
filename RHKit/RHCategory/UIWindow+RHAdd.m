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
    
    UIWindow * window = [[UIApplication sharedApplication].delegate window];
    UIViewController *topViewController = [window rootViewController];
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

@end
