//
//  UIButton+RHAdd.m
//  RHKit
//
//  Created by Abner_G on 2019/7/6.
//  Copyright © 2019 Abner_G. All rights reserved.
//

#import "UIButton+RHAdd.h"
#import <objc/runtime.h>

static char rh_kTouchAreaInsets;
@implementation UIButton (RHAdd)

- (UIEdgeInsets)touchAreaInsets {
    
    return [objc_getAssociatedObject(self, &rh_kTouchAreaInsets) UIEdgeInsetsValue];
}

- (void)setTouchAreaInsets:(UIEdgeInsets)touchAreaInsets {
    
    NSValue *value = [NSValue valueWithUIEdgeInsets:touchAreaInsets];
    objc_setAssociatedObject(self, &rh_kTouchAreaInsets, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    
    UIEdgeInsets touchAreaInsets = self.touchAreaInsets;
    CGRect bounds = self.bounds;
    bounds = CGRectMake(bounds.origin.x - touchAreaInsets.left,
                        bounds.origin.y - touchAreaInsets.top,
                        bounds.size.width + touchAreaInsets.left + touchAreaInsets.right,
                        bounds.size.height + touchAreaInsets.top + touchAreaInsets.bottom);
    return CGRectContainsPoint(bounds, point);
}

@end
