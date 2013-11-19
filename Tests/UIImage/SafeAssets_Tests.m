#import "TestHelpers.h"

#import "UIImage.h"

SPEC_BEGIN(UIImage_SafeAssets_Spec)

describe(@"UIImage/SafeAssets", ^{
    describe(@"+[UIImage imageNamed:]", ^{
        it(@"should raise exception if image does not exist", ^{
            [[theBlock(^{
                [UIImage imageNamed:@"Blip"];
            }) should] raiseWithName:NSGenericException];
        });
    });
});

SPEC_END
