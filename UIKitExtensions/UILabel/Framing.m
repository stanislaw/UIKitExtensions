// UIKitExtensions
//
// UIKitExtensions/UILabel/Framing.m
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import "Framing.h"

@implementation UILabel (Framing)

- (void)resizeFrameToFitTheText {
    NSString *stringToCalucateSizeAgainst;

    if (self.text && self.text.length > 0) {
        stringToCalucateSizeAgainst = self.text;
    } else if (self.attributedText && self.attributedText.string.length > 0) {
        stringToCalucateSizeAgainst = self.attributedText.string;
    } else {
        return;
    }
    
    CGSize maximumLabelSize = CGSizeMake(9999, 9999);

    CGSize expectedLabelSize = [stringToCalucateSizeAgainst sizeWithFont:self.font
                                     constrainedToSize:maximumLabelSize];

    CGRect newFrame = self.frame;
    newFrame.size = CGSizeMake(expectedLabelSize.width, expectedLabelSize.height);

    self.frame = newFrame;
}

- (void)resizeFrameHeightToFitTheText {
    if (self.text == nil || self.text.length == 0) return;

    CGSize maximumLabelSize = CGSizeMake(self.frame.size.width, 9999);
    
    CGSize expectedLabelSize = [self.text sizeWithFont:self.font constrainedToSize:maximumLabelSize lineBreakMode:self.lineBreakMode];

    CGRect newFrame = self.frame;
    newFrame.size = (CGSize){newFrame.size.width, expectedLabelSize.height};
    
    self.frame = newFrame;
}

@end
