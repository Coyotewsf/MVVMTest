//
//  ViewController.m
//  MVVMTest
//
//  Created by 海玩 on 16/4/28.
//  Copyright © 2016年 haiwan. All rights reserved.
//

#import "ViewController.h"
#import "RequestViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "TwoViewController.h"
#import "Book.h"

@interface ViewController ()

@property (nonatomic, weak) UITableView *tableView;

@property (nonatomic, strong) RequestViewModel *requesViewModel;

@end

@implementation ViewController

- (RequestViewModel *)requesViewModel
{
    if (_requesViewModel == nil) {
        _requesViewModel = [[RequestViewModel alloc] init];
    }
    return _requesViewModel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    tableView.dataSource = self.requesViewModel;
    tableView.delegate = self.requesViewModel;
    self.tableView = tableView;
    [self.view addSubview:tableView];
    
    // 执行请求
    RACSignal *requesSiganl = [self.requesViewModel.reuqesCommand execute:nil];
    
    // 获取请求的数据
    [requesSiganl subscribeNext:^(NSArray *x) {
        
        //self.requesViewModel.models = x;
        
        [self.tableView reloadData];
        
    }];
    
    [self.requesViewModel.signal subscribeNext:^(id x) {
        Book *b = (Book *)x;
        TwoViewController *two = [[TwoViewController alloc] init];
        two.title = b.title;
        [self.navigationController pushViewController:two animated:YES];
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
