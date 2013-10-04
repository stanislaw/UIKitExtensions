// UIKitExtensions
//
// UIKitExtensions/UIView/Nulling.m
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import "Nulling.h"

@implementation UIView (Nulling)

- (void)nullify {
    for (UIView *view in self.subviews) {

        if ([view conformsToProtocol:@protocol(UINulling)]) {
            [(UIView <UINulling> *)view nullify];
        } else {
            [view removeFromSuperview];
        }
    }

    [self removeFromSuperview];
}

@end
