// UIKitExtensions
//
// UIKitExtensions/UIHelpers.h
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import <UIKit/UIKit.h>

#define UI_DESIGNATED_VALUE(value) value
#define UI_CONTEXT_VALUE(value) value
#define UI_CONTEXT_OFFSET(offset) offset

static inline UIView * topMostView() {
    return UIApplication.sharedApplication.windows.lastObject;
}
