//
//  UIScreen+Core.h
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 10/3/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIScreen (Core)

@property (readonly) CGRect iOS6ApplicationBounds;
@property (readonly) CGRect iOS7ApplicationBounds;

@property (readonly) CGSize keyboardSize;

@end

static inline CGRect applicationFrame() {
    return UIScreen.mainScreen.applicationFrame;
}

static inline CGRect screenBounds() {
    return UIScreen.mainScreen.bounds;
}

static inline CGRect iOS6ApplicationBounds() {
    return UIScreen.mainScreen.iOS6ApplicationBounds;
}

static inline CGRect iOS7ApplicationBounds() {
    return UIScreen.mainScreen.iOS7ApplicationBounds;
}

static inline CGSize keyboardSize() {
    return UIScreen.mainScreen.keyboardSize;
}
