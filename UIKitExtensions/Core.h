//
//  UIScreen+Core.h
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 10/3/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import <UIKit/UIKit.h>


static inline CGRect applicationFrame() {
    return UIScreen.mainScreen.applicationFrame;
}

static inline CGRect screenBounds() {
    return UIScreen.mainScreen.bounds;
}

static inline CGRect iOS6ApplicationBounds() {
    CGRect applicationBounds = UIScreen.mainScreen.bounds;

    if (UIInterfaceOrientationIsLandscape(UIApplication.sharedApplication.statusBarOrientation)) {
        applicationBounds.size = CGSizeMake(applicationBounds.size.height, applicationBounds.size.width);
    }

    applicationBounds.size.height -= 20;

    return applicationBounds;
}

static inline CGRect iOS7ApplicationBounds() {
    CGRect applicationBounds = UIScreen.mainScreen.bounds;

    if (UIInterfaceOrientationIsLandscape(UIApplication.sharedApplication.statusBarOrientation)) {
        applicationBounds.size = CGSizeMake(applicationBounds.size.height, applicationBounds.size.width);
    }

    return applicationBounds;
}

@interface UIScreen (Core)

- (CGSize)keyboardSize;

@end
