//
//  UILabel+Example.m
//  LX_LayoutViews Example
//
//  Created by liweixi on 8/18/15.
//  Copyright © 2015 liweixi. All rights reserved.
//

#import "UILabel+Example.h"

@implementation UILabel (Example)
- (instancetype)initWithText:(NSString *)text Color:(UIColor *)textColor backGroundColor:(UIColor *) bgColor{
    if (self = [super init]) {
        self.text = text;
        self.textAlignment = NSTextAlignmentCenter;
        self.font = [UIFont systemFontOfSize:13];
        [self sizeToFit];
        self.textColor = textColor ? textColor : [UIColor blackColor];
        self.backgroundColor = bgColor ? bgColor : [UIColor whiteColor];
    }
    
    return self;
}
@end
