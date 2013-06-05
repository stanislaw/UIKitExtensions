#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol UIRotation <NSObject>
- (void)handleRotation;
@end

@interface UIView (Rotation)
- (void)handleRotation;
@end
