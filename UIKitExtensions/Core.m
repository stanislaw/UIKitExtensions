//
//  UIScreen+Core.m
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 10/3/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import "Core.h"

@implementation UIScreen (Core)

- (CGSize)keyboardSize {
    BOOL iPad = UIDevice.currentDevice.userInterfaceIdiom == UIUserInterfaceIdiomPad;

    CGSize keyboardSize = UIScreen.mainScreen.bounds.size;

    if (UIDeviceOrientationIsPortrait(UIApplication.sharedApplication.statusBarOrientation)) {
        keyboardSize.height = iPad ? 264 : 216;
    } else {
        keyboardSize.height = iPad ? 352 : 162;
    }

    return keyboardSize;
}

@end
