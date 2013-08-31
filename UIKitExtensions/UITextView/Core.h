//
//  UITextView+Helpers.h
//  aaah
//
//  Created by Stanislaw Pankevich on 12/19/12.
//  Copyright (c) 2012 IProjecting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (Core)

- (CGRect)rectForStringInRange:(NSRange)stringRange;
@property (readonly) CGPoint firstCharacterOrigin;

@end
