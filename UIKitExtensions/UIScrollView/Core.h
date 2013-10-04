// UIKitExtensions
//
// UIKitExtensions/UIScrollView/Core.h
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import <UIKit/UIKit.h>

@interface UIScrollView (Extensions)

- (void)performBlockWithScrollDisabled:(void(^)(void))block;

@end
