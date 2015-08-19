//
//  UIButton+Extension.m
//  LX_LayoutViews Example
//
//  Created by liweixi on 8/19/15.
//  Copyright © 2015 liweixi. All rights reserved.
//

#import "UIButton+Extension.h"

@implementation UIButton (Extension)
- (instancetype)initWithText:(NSString *)str {
    if (self = [super init]) {
        self = [UIButton buttonWithType:UIButtonTypeCustom];
        [self setTitle:str forState:UIControlStateNormal];
        [self setBackgroundColor:[UIColor darkGrayColor]];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}
@end
