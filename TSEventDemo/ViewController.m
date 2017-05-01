//
//  ViewController.m
//  TSEventDemo
//
//  Created by huangjianwu on 2016/12/5.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "ViewController.h"
#import "TSTapViewController.h"
#import "TSHittestingController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

#pragma mark - default



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    [self.view addSubview:_tableView];
    UIGestureRecognizer *y;
    self.tabBarItem.title = @"First";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

#pragma mark - private

#pragma mark - public

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0)
    {
        TSHittestingController *hc = [[TSHittestingController alloc] init];
        [self.navigationController pushViewController:hc animated:YES];
        return;
    }
    TSTapViewController *tc = [[TSTapViewController alloc] init];
    [self.navigationController pushViewController:tc animated:YES];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if(indexPath.row == 0)
    {
        cell.textLabel.text = @"hit-testing";
    }
    else
    {
        cell.textLabel.text = @"响应链";
    }
    return cell;
}

@end
