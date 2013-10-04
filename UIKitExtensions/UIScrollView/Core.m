// UIKitExtensions
//
// UIKitExtensions/UIScrollView/Core.m
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import "Core.h"

@implementation UIScrollView (Extensions)

- (void)performBlockWithScrollDisabled:(void(^)(void))block {
    self.scrollEnabled = NO;

    block();

    self.scrollEnabled = YES;
}

@end
