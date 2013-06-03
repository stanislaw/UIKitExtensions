//
//  UILabel+Extensions.m
//  aaah
//
//  Created by Stanislaw Pankevich on 1/22/13.
//  Copyright (c) 2013 IProjecting. All rights reserved.
//

#import "UILabel+Sizing.h"

@implementation UILabel (Extensions)

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
    NSString *stringToCalucateSizeAgainst;

    if (self.text && self.text.length > 0) {
        stringToCalucateSizeAgainst = self.text;
    } else if (self.attributedText && self.attributedText.string.length > 0) {
        stringToCalucateSizeAgainst = self.attributedText.string;
    } else {
        return;
    }

    CGSize maximumLabelSize = CGSizeMake(self.frame.size.width, 9999);
    
    CGSize expectedLabelSize = [stringToCalucateSizeAgainst sizeWithFont:self.font
                                                       constrainedToSize:maximumLabelSize
                                                           lineBreakMode:self.lineBreakMode];

    CGRect newFrame = self.frame;
    newFrame.size = (CGSize){newFrame.size.width, expectedLabelSize.height};
    
    self.frame = newFrame;
}

@end
