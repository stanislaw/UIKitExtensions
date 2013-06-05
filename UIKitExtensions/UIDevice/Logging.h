//
//  UIDevice+Logging.h
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 6/5/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import <UIKit/UIDevice.h>

static inline NSString * NSStringFromUIDeviceOrientation(UIDeviceOrientation deviceOrientation) {
    NSString *orientationString;

    switch (deviceOrientation) {
        case UIDeviceOrientationUnknown:
            orientationString = @"UIDeviceOrientationUnknown";
            break;
        case UIDeviceOrientationPortrait:
            orientationString = @"UIDeviceOrientationPortrait";
            break;
        case UIDeviceOrientationPortraitUpsideDown:
            orientationString = @"UIDeviceOrientationPortraitUpsideDown";
            break;
        case UIDeviceOrientationLandscapeLeft:
            orientationString = @"UIDeviceOrientationLandscapeLeft";
            break;
        case UIDeviceOrientationLandscapeRight:
            orientationString = @"UIDeviceOrientationLandscapeRight";
            break;
        case UIDeviceOrientationFaceUp:
            orientationString = @"UIDeviceOrientationFaceUp";
            break;
        case UIDeviceOrientationFaceDown:
            orientationString = @"UIDeviceOrientationFaceDown";
            break;

        default:
            break;
    }

    return orientationString;
}

static inline void NSLogUIDeviceOrientation(UIDeviceOrientation deviceOrientation) {
    NSLog(@"%@", NSStringFromUIDeviceOrientation(deviceOrientation));
}
