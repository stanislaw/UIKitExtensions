// UIKitExtensions
//
// UIKitExtensions/UIHelpers.h
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import <UIKit/UIKit.h>

#define SMALL_OFFSET(offset) offset

static inline UIView * topMostView() {
    return UIApplication.sharedApplication.windows.lastObject;
}
