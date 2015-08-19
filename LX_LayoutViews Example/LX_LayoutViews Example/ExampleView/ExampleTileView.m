//
//  ExampleTileView.m
//  LX_LayoutViews Example
//
//  Created by liweixi on 8/19/15.
//  Copyright © 2015 liweixi. All rights reserved.
//

#import "ExampleTileView.h"
#import "LX_LayoutViews.h"
#define kSubviewsCount 6
@implementation ExampleTileView

- (instancetype)init {
    if (self = [super init]) {
        self.backgroundColor = [UIColor lightGrayColor];
        [self horizontalTile];
        [self verticalTile];
        
    }
    return self;
}

/**
 *  水平平铺子控件
 */
- (void)horizontalTile {
 
    UIView *refView = [[UIView alloc]init];
    [self addSubview:refView];
    refView.backgroundColor = [UIColor whiteColor];
    [refView lx_InnerLayoutForType:LXLayoutInnerTypeCenterTop referedView:self size:CGSizeMake(300, 250) offset:CGPointMake(0, 100)];
    
    //refView内部子控件
    for (int i = 0; i < kSubviewsCount; i++) {
        UIView *subView = [[UIView alloc] init];
        subView.backgroundColor = [self randomColor];
        [refView addSubview:subView];
    }
    
    [refView lx_tileViews:refView.subviews Direction:LXLayoutTileDirectionHorizontal Inset:UIEdgeInsetsMake(5, 5, 5, 5)];
 
}

/**
 *  垂直平铺子控件
 */
- (void)verticalTile {
    UIView *refView = [[UIView alloc]init];
    [self addSubview:refView];
    refView.backgroundColor = [UIColor blackColor];
    [refView lx_InnerLayoutForType:LXLayoutInnerTypeCenterBottom referedView:self size:CGSizeMake(300, 250) offset:CGPointMake(0, -40)];
    
    //refView内部子控件
    for (int i = 0; i < kSubviewsCount; i++) {
        UIView *subView = [[UIView alloc] init];
        subView.backgroundColor = [self randomColor];
        [refView addSubview:subView];
    }
    [refView lx_tileViews:refView.subviews Direction:LXLayoutTileDirectionVertical Inset:UIEdgeInsetsMake(5, 5, 5, 5)];
   
}

- (void)setUpUI {

}

/**
 *  随机颜色
 */
- (UIColor *)randomColor {
    return [UIColor colorWithRed:[self randomColorParam] green:[self randomColorParam] blue:[self randomColorParam] alpha:1.0];
}
- (CGFloat)randomColorParam {
    return (arc4random_uniform(200.0) + 50) / 255.0;
}

@end
