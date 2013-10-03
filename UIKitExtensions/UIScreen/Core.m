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

    UIInterfaceOrientation currentInterfaceOrientation = UIApplication.sharedApplication.statusBarOrientation;

    CGSize keyboardSize = [self screenBoundsForOrientation:currentInterfaceOrientation].size;

    if (UIDeviceOrientationIsPortrait(currentInterfaceOrientation)) {
        keyboardSize.height = iPad ? 264 : 216;
    } else {
        keyboardSize.height = iPad ? 352 : 162;
    }

    return keyboardSize;
}

- (CGRect)screenBoundsForOrientation:(UIInterfaceOrientation)interfaceOrientation {
    CGRect screenBounds = self.bounds;

    if (UIInterfaceOrientationIsLandscape(interfaceOrientation)) {
        screenBounds.size = CGSizeMake(screenBounds.size.height, screenBounds.size.width);
    }

    return screenBounds;
}

- (CGRect)iOS6ApplicationBounds {
    CGRect applicationBounds = [self screenBoundsForOrientation:UIApplication.sharedApplication.statusBarOrientation];

    applicationBounds.size.height -= 20;

    return applicationBounds;
}

- (CGRect)iOS7ApplicationBounds {
    return [self screenBoundsForOrientation:UIApplication.sharedApplication.statusBarOrientation];
}

@end
