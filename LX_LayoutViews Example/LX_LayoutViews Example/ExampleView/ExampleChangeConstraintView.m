//
//  ExampleChangeConstraintView.m
//  LX_LayoutViews Example
//
//  Created by liweixi on 8/19/15.
//  Copyright © 2015 liweixi. All rights reserved.
//

#import "ExampleChangeConstraintView.h"
#import "LX_LayoutViews.h"
#import "UIButton+Extension.h"

@interface ExampleChangeConstraintView ()
@property (nonatomic,weak)UIView * changedView;
@property (nonatomic,strong)NSLayoutConstraint * conH;
@property (nonatomic,strong)NSLayoutConstraint * conV;
@end

@implementation ExampleChangeConstraintView

- (instancetype)init {
    if (self = [super init]) {
        self.backgroundColor = [UIColor lightGrayColor];
        [self setUpUI];
    }
    return self;
}

- (void)setUpUI {
    
    UIView *testView = [[UIView alloc] init];
    testView.backgroundColor = [UIColor blackColor];
    [self addSubview:testView];
    [testView lx_InnerLayoutForType:LXLayoutInnerTypeCenterTop referedView:self size:CGSizeMake(300, 300) offset:CGPointMake(0, 80)];
    
    UIView *change = [[UIView alloc] init];
    change.backgroundColor = [UIColor whiteColor];
    [testView addSubview:change];
    self.changedView = change;
    NSArray *cons = [change lx_InnerLayoutForType:LXLayoutInnerTypeCenter referedView:testView size:CGSizeMake(30, 30) offset:CGPointZero];
    
    //获取change的约束
    self.conH = [change lx_constraintInConstraintsList:cons attribute:NSLayoutAttributeCenterY];
    self.conV = [change lx_constraintInConstraintsList:cons attribute:NSLayoutAttributeCenterX];
    
    //控制移动方向的按钮
    UIButton *btnU = [[UIButton alloc] initWithText:@"UP"];
    [self addSubview:btnU];
    [btnU lx_OuterLayoutForType:LXLayoutOuterTypeBottomCenter referedView:testView size:CGSizeMake(60, 40) offset:CGPointMake(0, 60)];
    [btnU addTarget:self action:@selector(moveUP:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btnC = [[UIButton alloc] initWithText:@"magnify"];
    [self addSubview:btnC];
    [btnC lx_OuterLayoutForType:LXLayoutOuterTypeBottomCenter referedView:btnU size:CGSizeMake(80, 40) offset:CGPointMake(0, 10)];
    [btnC addTarget:self action:@selector(changeSize:) forControlEvents:UIControlEventTouchUpInside];

    
    UIButton *btnL = [[UIButton alloc] initWithText:@"LEFT"];
    [self addSubview:btnL];
    [btnL lx_OuterLayoutForType:LXLayoutOuterTypeLeftCenter referedView:btnC size:CGSizeMake(60, 40) offset:CGPointMake(-10, 0)];
    [btnL addTarget:self action:@selector(moveLEFT:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btnR = [[UIButton alloc] initWithText:@"RIGHT"];
    [self addSubview:btnR];
    [btnR lx_OuterLayoutForType:LXLayoutOuterTypeRightCenter referedView:btnC size:CGSizeMake(60, 40) offset:CGPointMake(10, 0)];
    [btnR addTarget:self action:@selector(moveRIGHT:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btnD = [[UIButton alloc] initWithText:@"DOWN"];
    [self addSubview:btnD];
    [btnD lx_OuterLayoutForType:LXLayoutOuterTypeBottomCenter referedView:btnC size:CGSizeMake(60, 40) offset:CGPointMake(0, 10)];
    [btnD addTarget:self action:@selector(moveDOWN:) forControlEvents:UIControlEventTouchUpInside];
  
    
}

#pragma mark - 按钮点击
- (void)moveUP:(UIButton *)btn {
    self.conH.constant -= 20;
}
- (void)moveDOWN:(UIButton *)btn {
    self.conH.constant += 20;
}
- (void)moveLEFT:(UIButton *)btn {
    self.conV.constant -= 20;
}
- (void)moveRIGHT:(UIButton *)btn {
    self.conV.constant += 20;
}

//修改控件大小
- (void)changeSize:(UIButton *)btn {
    
    CGFloat scale = self.changedView.bounds.size.width * 1.5;
    [self.changedView lx_sizeLayout:CGSizeMake(scale, scale)];
}
@end
