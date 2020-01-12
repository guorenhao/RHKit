//
//  UINavigationController+RHAdd.m
//  RHKit
//
//  Created by Abner_G on 2020/1/12.
//  Copyright © 2020 Abner_G. All rights reserved.
//

#import "UINavigationController+RHAdd.h"

@implementation UINavigationController (RHAdd)

/// rootVC
- (UIViewController *)rootViewController {
    
    if (self.viewControllers && self.viewControllers.count > 0) {
        
        return self.viewControllers.firstObject;
    }
    return nil;
}

/// 根据名字获取 Navigation 中的 VC
/// @param name VC名字
- (UIViewController *)viewControllerWithName:(NSString *)name {
    
    for (UIViewController *viewController in self.viewControllers) {
        
        if ([viewController isKindOfClass:NSClassFromString(name)]) {
            
            return viewController;
        }
    }
    return nil;
}

/// 返回指定名字的 VC
/// @param name     VC名字
/// @param animated 是否动画
- (void)popToViewControllerWithName:(NSString *)name animated:(BOOL)animated {
    
    UIViewController * vc = [self viewControllerWithName:name];
    if (vc) {
        
        [self popToViewController:vc animated:animated];
    }
}


@end
