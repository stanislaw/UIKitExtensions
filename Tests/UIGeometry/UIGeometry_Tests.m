#import "TestHelpers.h"

#import "UIGeometry.h"

extern CGPoint CGRectGetCenter(CGRect frame);

SPEC_BEGIN(UIGeometry_Spec)

describe(@"UIGeometry", ^{
    describe(@"CGRectGetCenter", ^{
        specify(^{
            CGPoint centerPoint = CGRectGetCenter(CGRectMake(0, 0, 100, 100));
            BOOL pointsAreEqual = CGPointEqualToPoint(centerPoint, CGPointMake(50, 50));
            [[theValue(pointsAreEqual) should] beYes];
        });
    });
});

SPEC_END
