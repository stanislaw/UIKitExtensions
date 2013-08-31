#import "Core.h"

@implementation UITextView (Core)

- (CGRect)rectForStringInRange:(NSRange)stringRange {
    // iOS 5 crashes on -[UITextView textRangeFromPosition:toPosition:] when text is empty
    if (self.text == nil || self.text.length == 0) {
        return CGRectNull;
    } else {
        UITextPosition *begin = [self positionFromPosition:self.beginningOfDocument offset:stringRange.location];
        UITextPosition *end = [self positionFromPosition:begin offset:stringRange.length];

        UITextRange *textRange = [self textRangeFromPosition:begin toPosition:end];

        return [self firstRectForRange:textRange];
    }
}

- (CGPoint)firstCharacterOrigin {
    return [self rectForStringInRange:NSMakeRange(0, 1)].origin;
}

@end
