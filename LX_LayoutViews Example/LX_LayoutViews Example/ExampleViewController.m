//
//  ViewController.m
//  LX_LayoutViews Example
//
//  Created by liweixi on 8/15/15.
//  Copyright © 2015 liweixi. All rights reserved.
//

#import "ExampleViewController.h"
#import "LX_LayoutViews.h"

@interface ExampleViewController ()

@end

@implementation ExampleViewController

- (void)loadView {
    
    self.view = [[UIView alloc] init];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setUpUI];
}


- (void)setUpUI {
    UIView * exampleView= [(UIView *)[NSClassFromString(self.exampleInfo[@"class"]) alloc] init];
    [self.view addSubview:exampleView];
    [exampleView lx_fillView:self.view inset:UIEdgeInsetsZero];
}



@end
