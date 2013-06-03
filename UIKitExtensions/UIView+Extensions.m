//
//  UIView+Extensions.m
//  aaah
//
//  Created by Stanislaw Pankevich on 1/22/13.
//  Copyright (c) 2013 IProjecting. All rights reserved.
//

#import "UIView+Extensions.h"

@implementation UIView (Extensions)

- (id)initWithBlock:(void(^)(id))block {
    self = [self initWithFrame:CGRectZero];

    if (self) {
        if (block) block(self);
    }

    return self;
}

- (id)initWithFrame:(CGRect)frame andBlock:(void(^)(id))block {
    self = [self initWithFrame:frame];

    if (self) {
        if (block) block(self);
    }

    return self;
}

- (id)modifyWithBlock:(void(^)(id))block {
    if (block) block(self);

    return self;
}

@end