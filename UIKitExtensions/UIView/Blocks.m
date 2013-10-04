// UIKitExtensions
//
// UIKitExtensions/UIView/Blocks.m
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import "Blocks.h"

@implementation UIView (Blocks)

- (instancetype)initWithBlock:(void(^)(id))block {
    self = [self initWithFrame:CGRectZero];

    if (self) {
        if (block) block(self);
    }

    return self;
}

- (instancetype)initWithFrame:(CGRect)frame andBlock:(void(^)(id))block {
    self = [self initWithFrame:frame];

    if (self) {
        if (block) block(self);
    }

    return self;
}

- (instancetype)performBlock:(void(^)(id))block {
    if (block) block(self);

    return self;
}

@end