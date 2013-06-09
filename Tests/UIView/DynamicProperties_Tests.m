#import "TestHelpers.h"

#import "UIView.h"

SPEC_BEGIN(UIView_DynamicProperties_Spec)

describe(@"UIView/DynamicProperties", ^{
    describe(@"@property (strong, nonatomic) dynamicProperties", ^{
        it(@"should behave like a property", ^{
            UIView *view = [[UIView alloc] init];

            [[theValue([view respondsToSelector:@selector(dynamicProperties)]) should] beYes];
            [[theValue([view respondsToSelector:@selector(setDynamicProperties:)]) should] beYes];
        });
    });

    describe(@"-[UIView defineDynamicPropertiesWithBlock]", ^{
        it(@"should support chaining after defined", ^{
            UIView *view = [[UIView alloc] init];

            UIView *resultView = [view defineDynamicPropertiesWithBlock:^(UIView *view) {
            }];

            [[resultView should] equal:view];
        });
    });

    describe(@"-[UIView applyDynamicProperties]", ^{
        it(@"should raise if dynamicProperties are not defined", ^{
            UIView *view = [[UIView alloc] init];

            [[theBlock(^{
                [view applyDynamicProperties];
            }) should] raise];
        });

        it(@"should yield receiver view to a block", ^{
            NSUInteger tag = 1;

            UIView *view = [[UIView alloc] init];

            [view defineDynamicPropertiesWithBlock:^(UIView *view) {
                view.tag = tag;
            }];

            [view applyDynamicProperties];
            
            [[theValue(view.tag) should] equal:@(1)];
        });

        it(@"should support chaining after applied", ^{
            UIView *view = [[UIView alloc] init];

            [view defineDynamicPropertiesWithBlock:^(UIView *view) {
            }];

            UIView *resultView = [view applyDynamicProperties];

            [[resultView should] equal:view];
        });
    });
});

SPEC_END
