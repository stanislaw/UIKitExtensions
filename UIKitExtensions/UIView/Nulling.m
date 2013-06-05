//
//  UIView+Nulling.m
//  aaah
//
//  Created by Stanislaw Pankevich on 3/28/13.
//  Copyright (c) 2013 IProjecting. All rights reserved.
//

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
