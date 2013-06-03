//
//  UIKitExtensions.h
//  aaah
//
//  Created by Stanislaw Pankevich on 6/3/13.
//  Copyright (c) 2013 IProjecting. All rights reserved.
//

#ifndef aaah_UIKitExtensions_h
#define aaah_UIKitExtensions_h

#import "UIScreen_Extensions.h"

#define SMALL_OFFSET(offset) offset

static inline UIView * topMostView() {
    return UIApplication.sharedApplication.windows.lastObject;
}

#endif
