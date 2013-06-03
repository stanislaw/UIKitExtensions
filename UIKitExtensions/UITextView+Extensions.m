#import "UITextView+Extensions.h"

@implementation UITextView (Extensions)

- (CGRect)rectForStringInRange:(CFRange)stringRange {
    UITextPosition *begin = [self positionFromPosition:self.beginningOfDocument offset:stringRange.location];
    UITextPosition *end = [self positionFromPosition:begin offset:stringRange.length];

    UITextRange *textRange = [self textRangeFromPosition:begin toPosition:end];
    
    return [self firstRectForRange:textRange];
}

@end
