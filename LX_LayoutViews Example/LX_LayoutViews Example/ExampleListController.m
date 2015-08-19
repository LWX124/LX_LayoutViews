//
//  ExampleListController.m
//  LX_LayoutViews Example
//
//  Created by liweixi on 8/18/15.
//  Copyright © 2015 liweixi. All rights reserved.
//

#import "ExampleListController.h"
#import "ExampleViewController.h"

static NSString *reuseIdentifier = @"ExampleCell";


@interface ExampleListController ()
@property (strong,nonatomic) NSArray * ExampleLists;
@end


@implementation ExampleListController
#pragma mark - 示例数组懒加载
- (NSArray *)ExampleLists {

    if (_ExampleLists == nil) {
        _ExampleLists = @[@{@"name":@"AutoLayout(Inner-Outer) Example",
                            @"class":@"ExampleInnerOuterView"},
                          @{@"name":@"AutoLayout(Tile) Example",
                            @"class":@"ExampleTileView"},
                          @{@"name":@"AutoLayout(change constraint) Example",
                            @"class":@"ExampleChangeConstraintView"}
                          ];
    }
    
    return _ExampleLists;
    
    
}

#pragma mark - 界面初始化
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"Example List";
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.ExampleLists.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    }
    
    cell.textLabel.text = self.ExampleLists[indexPath.row][@"name"];
    
    // Configure the cell...
    
    return cell;
}

- (void)tableView:(nonnull UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    ExampleViewController *vc = [[ExampleViewController alloc] init];
    vc.exampleInfo = self.ExampleLists[indexPath.row];
    [self.navigationController pushViewController:vc animated:YES];
} 

@end
