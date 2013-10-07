#import "TestHelpers.h"

#import "UIView.h"

SPEC_BEGIN(UIView_Blocks_Spec)

describe(@"UIView/Blocks", ^{
    describe(@"-[UIView initWithBlock:]", ^{
        it(@"should return instantiated instance", ^{

            UIView *view = [[UIView alloc] initWithBlock:nil];

            [[theValue([view isKindOfClass:UIView.class]) should] beYes];
        });

        it(@"should yield newly created view to a block", ^{
            NSUInteger tag = 1;

            UIView *view = [[UIView alloc] initWithBlock:^(UIView *view) {
                view.tag = tag;
            }];

            [[theValue(view.tag) should] equal:@(1)];
        });
    });

    describe(@"-[UIView performBlockOnReceiver:]", ^{
        it(@"should support chaining", ^{
            UIView *view = [[UIView alloc] init];

            UIView *resultView = [view performBlockOnReceiver:nil];

            [[view should] equal:resultView];
        });

        it(@"should yield receiver view to a block", ^{
            NSUInteger tag = 1;

            UIView *view = [[UIView alloc] init];

            [view performBlockOnReceiver:^(UIView *view) {
                view.tag = tag;
            }];

            [[theValue(view.tag) should] equal:@(1)];
        });
    });
});

SPEC_END
