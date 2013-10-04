// UIKitExtensions
//
// UIKitExtensions/UIView/Rotation.m
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import "Rotation.h"

@implementation UIView (Rotation)

// Default implementation
- (void)handleRotation {
    for (UIView *view in self.subviews) {
        if ([view conformsToProtocol:@protocol(UIViewRotation)]) {
            [(UIView <UIViewRotation> *)view handleRotation];
        }
    }
}

@end
