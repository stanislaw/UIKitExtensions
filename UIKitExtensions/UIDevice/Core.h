//
//  UIDevice/Core.h
//  UIKitExtensions
//
//  Created by Stanislaw Pankevich on 6/5/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import <UIKit/UIDevice.h>

#import "Utils.h"

// Preprocessor macros: defines "NSStringFromUIDeviceOrientation()"
UIKE_NSStringFromMethodForEnumType(UIDeviceOrientation, NSInteger,

                                   UIDeviceOrientationUnknown,
                                   UIDeviceOrientationPortrait,
                                   UIDeviceOrientationPortraitUpsideDown,
                                   UIDeviceOrientationLandscapeLeft,
                                   UIDeviceOrientationLandscapeRight,
                                   UIDeviceOrientationFaceUp,
                                   UIDeviceOrientationFaceDown);
