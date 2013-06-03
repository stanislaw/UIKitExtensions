#import <UIKit/UIKit.h>

static inline CGRect applicationFrame() {
    return [[UIScreen mainScreen] applicationFrame];;
}

static inline CGRect screenBounds() {
    return [UIScreen mainScreen].bounds;
}

static inline CGRect screenFrame() {
    CGRect screenFrame = [[UIScreen mainScreen] applicationFrame];

    screenFrame.origin = CGPointZero;

    if (UIInterfaceOrientationIsLandscape(UIApplication.sharedApplication.statusBarOrientation)) {
        CGFloat width = screenFrame.size.width;
        screenFrame.size.width = screenFrame.size.height;
        screenFrame.size.height = width;
    }

    return screenFrame;
}

static inline CGRect portraitScreenFrame() {
    CGRect screenFrame = [[UIScreen mainScreen] applicationFrame];

    screenFrame.origin = CGPointZero;

    return screenFrame;
}