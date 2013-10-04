//
//  UIApplication+Logging.h
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 6/5/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import <UIKit/UIApplication.h>

#import "Utils.h"

static inline UIInterfaceOrientation interfaceOrientation() {
    return UIApplication.sharedApplication.statusBarOrientation;
}

static inline BOOL isPortraitOrientation() {
    return UIInterfaceOrientationIsPortrait(interfaceOrientation());
}

// Preprocessor macros: defines "NSStringFromUIDeviceOrientation()"
UIKE_NSStringFromMethodForEnumType(UIInterfaceOrientation,
                                   NSInteger,

                                   UIInterfaceOrientationPortrait,
                                   UIInterfaceOrientationPortraitUpsideDown,
                                   UIInterfaceOrientationLandscapeLeft,
                                   UIInterfaceOrientationLandscapeRight);

