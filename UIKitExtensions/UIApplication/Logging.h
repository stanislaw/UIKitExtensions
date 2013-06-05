//
//  UIApplication+Logging.h
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 6/5/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import <UIKit/UIApplication.h>

static inline NSString * NSStringFromUIInterfaceOrientation(UIInterfaceOrientation interfaceOrientation) {
    NSString *orientationString;

    switch (interfaceOrientation) {
        case UIInterfaceOrientationPortrait:
            orientationString = @"UIInterfaceOrientationPortrait";
            break;
        case UIInterfaceOrientationPortraitUpsideDown:
            orientationString = @"UIInterfaceOrientationPortraitUpsideDown";
            break;
        case UIInterfaceOrientationLandscapeLeft:
            orientationString = @"UIInterfaceOrientationLandscapeLeft";
            break;
        case UIInterfaceOrientationLandscapeRight:
            orientationString = @"UIInterfaceOrientationLandscapeRight";
            break;

        default:
            break;
    }
    
    return orientationString;
}

static inline void NSLogUIInterfaceOrientation(UIInterfaceOrientation interfaceOrientation) {
    NSLog(@"%@", NSStringFromUIInterfaceOrientation(interfaceOrientation));
}
