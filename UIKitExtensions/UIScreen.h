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
