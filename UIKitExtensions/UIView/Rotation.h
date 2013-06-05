#import <Foundation/Foundation.h>

@protocol UIRotation <NSObject>
- (void)handleRotation;
@end

@interface UIView (Rotation)
- (void)handleRotation;
@end
