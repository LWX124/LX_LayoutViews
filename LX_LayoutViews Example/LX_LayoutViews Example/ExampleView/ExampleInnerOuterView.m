//
//  ExampleInnerOuterView.m
//  LX_LayoutViews Example
//
//  Created by liweixi on 8/18/15.
//  Copyright © 2015 liweixi. All rights reserved.
//

#import "ExampleInnerOuterView.h"
#import "UILabel+Example.h"
#import "LX_LayoutViews.h"

@interface ExampleInnerOuterView ()
@property (nonatomic,strong)UIView * referView;
@end


@implementation ExampleInnerOuterView

- (instancetype)init {
    if (self = [super init]) {
        self.backgroundColor = [UIColor whiteColor];
        [self setUpUI];
    }
    return self;
}



- (void)setUpUI {
    
    [self.referView lx_InnerLayoutForType:LXLayoutInnerTypeCenter referedView:self size:CGSizeMake(200, 200) offset:CGPointZero];
    
    [self innerLayout];
    [self outerLayout];
    
}

#pragma mark - 控件内部布局
- (void)innerLayout {
    //LeftTop
    UILabel *lblLT = [[UILabel alloc] initWithText:@"左上" Color:nil backGroundColor:nil];
    [self.referView addSubview:lblLT];
    [lblLT lx_InnerLayoutForType:LXLayoutInnerTypeLeftTop referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(8, 8)];
    
    //LeftCenter
    UILabel *lblLC = [[UILabel alloc] initWithText:@"左中" Color:nil backGroundColor:nil];
    [self.referView addSubview:lblLC];
    [lblLC lx_InnerLayoutForType:LXLayoutInnerTypeLeftCenter referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(8, 0)];
    
    //LeftBottom
    UILabel *lblLB = [[UILabel alloc] initWithText:@"左下" Color:nil backGroundColor:nil];
    [self.referView addSubview:lblLB];
    [lblLB lx_InnerLayoutForType:LXLayoutInnerTypeLeftBottom referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(8, -8)];
    
    //CenterTop
    UILabel *lblCT = [[UILabel alloc] initWithText:@"中上" Color:nil backGroundColor:nil];
    [self.referView addSubview:lblCT];
    [lblCT lx_InnerLayoutForType:LXLayoutInnerTypeCenterTop referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(0, 8)];
    //Center
    UILabel *lblC = [[UILabel alloc] initWithText:@"中" Color:nil backGroundColor:nil];
    [self.referView addSubview:lblC];
    [lblC lx_InnerLayoutForType:LXLayoutInnerTypeCenter referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointZero];
    //CenterBottom
    UILabel *lblCB = [[UILabel alloc] initWithText:@"中下" Color:nil backGroundColor:nil];
    [self.referView addSubview:lblCB];
    [lblCB lx_InnerLayoutForType:LXLayoutInnerTypeCenterBottom referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(0, -8)];
    
    //RightTop
    UILabel *lblRT = [[UILabel alloc] initWithText:@"右上" Color:nil backGroundColor:nil];
    [self.referView addSubview:lblRT];
    [lblRT lx_InnerLayoutForType:LXLayoutInnerTypeRightTop referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(-8, 8)];
    //RightCenter
    UILabel *lblRC = [[UILabel alloc] initWithText:@"右中" Color:nil backGroundColor:nil];
    [self.referView addSubview:lblRC];
    [lblRC lx_InnerLayoutForType:LXLayoutInnerTypeRightCenter referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(-8, 0)];
    //RightBottom
    UILabel *lblRB = [[UILabel alloc] initWithText:@"右下" Color:nil backGroundColor:nil];
    [self.referView addSubview:lblRB];
    [lblRB lx_InnerLayoutForType:LXLayoutInnerTypeRightBottom referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(-8, -8)];
    
    
}
#pragma mark - 控件外部布局
- (void)outerLayout {
    //TopLeft
    UILabel *lblTL = [[UILabel alloc] initWithText:@"上左" Color:nil backGroundColor:[UIColor greenColor]];
    [self addSubview:lblTL];
    [lblTL lx_OuterLayoutForType:LXLayoutOuterTypeTopLeft referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(8, -8)];
    
    //TopCenter
    UILabel *lblTC = [[UILabel alloc] initWithText:@"上中" Color:nil backGroundColor:[UIColor greenColor]];
    [self addSubview:lblTC];
    [lblTC lx_OuterLayoutForType:LXLayoutOuterTypeTopCenter referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(0, -8)];
    
    //TopRight
    UILabel *lblTR = [[UILabel alloc] initWithText:@"上右" Color:nil backGroundColor:[UIColor greenColor]];
    [self addSubview:lblTR];
    [lblTR lx_OuterLayoutForType:LXLayoutOuterTypeTopRight referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(-8, -8)];
    
    //BottomLeft
    UILabel *lblBL = [[UILabel alloc] initWithText:@"下左" Color:nil backGroundColor:[UIColor greenColor]];
    [self addSubview:lblBL];
    [lblBL lx_OuterLayoutForType:LXLayoutOuterTypeBottomLeft referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(8, 8)];
    
    //BottomCenter
    UILabel *lblBC = [[UILabel alloc] initWithText:@"下中" Color:nil backGroundColor:[UIColor greenColor]];
    [self addSubview:lblBC];
    [lblBC lx_OuterLayoutForType:LXLayoutOuterTypeBottomCenter referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(0, 8)];
    
    //BottomRight
    UILabel *lblBR = [[UILabel alloc] initWithText:@"下右" Color:nil backGroundColor:[UIColor greenColor]];
    [self addSubview:lblBR];
    [lblBR lx_OuterLayoutForType:LXLayoutOuterTypeBottomRight referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(-8, 8)];
    
    //LeftTop
    UILabel *lblLT = [[UILabel alloc] initWithText:@"左上" Color:nil backGroundColor:[UIColor greenColor]];
    [self addSubview:lblLT];
    [lblLT lx_OuterLayoutForType:LXLayoutOuterTypeLeftTop referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(-8, 8)];
    //LeftCenter
    UILabel *lblLC = [[UILabel alloc] initWithText:@"左中" Color:nil backGroundColor:[UIColor greenColor]];
    [self addSubview:lblLC];
    [lblLC lx_OuterLayoutForType:LXLayoutOuterTypeLeftCenter referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(-8, 0)];
    //LeftBottom
    UILabel *lblLB = [[UILabel alloc] initWithText:@"左下" Color:nil backGroundColor:[UIColor greenColor]];
    [self addSubview:lblLB];
    [lblLB lx_OuterLayoutForType:LXLayoutOuterTypeLeftBottom referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(-8, -8)];

    //RightTop
    UILabel *lblRT = [[UILabel alloc] initWithText:@"右上" Color:nil backGroundColor:[UIColor greenColor]];
    [self addSubview:lblRT];
    [lblRT lx_OuterLayoutForType:LXLayoutOuterTypeRightTop referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(8, 8)];
    
    //RightCenter
    UILabel *lblRC = [[UILabel alloc] initWithText:@"右中" Color:nil backGroundColor:[UIColor greenColor]];
    [self addSubview:lblRC];
    [lblRC lx_OuterLayoutForType:LXLayoutOuterTypeRightCenter referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(8, 0)];
    
    //RightBottom
    UILabel *lblRB = [[UILabel alloc] initWithText:@"右下" Color:nil backGroundColor:[UIColor greenColor]];
    [self addSubview:lblRB];
    [lblRB lx_OuterLayoutForType:LXLayoutOuterTypeRightBottom referedView:self.referView size:CGSizeMake(40, 30) offset:CGPointMake(8, -8)];
    
}

#pragma mark - 懒加载参照控件
- (UIView *)referView {
    if (_referView == nil) {
        _referView = [[UIView alloc] init];
        [self addSubview:_referView];
        _referView.backgroundColor = [UIColor orangeColor];
    }
    return _referView;
}

@end
