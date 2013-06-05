#import "Rotation.h"

@implementation UIView (Rotation)

- (void)handleRotation {
    for (UIView *view in self.subviews) {
        if ([view conformsToProtocol:@protocol(UIRotation)]) {
            [(UIView <UIRotation> *)view handleRotation];
        }
    }
}

@end
