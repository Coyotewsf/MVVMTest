//
//  RequestViewModel.h
//  MVVMTest
//
//  Created by 海玩 on 16/4/28.
//  Copyright © 2016年 haiwan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <ReactiveCocoa/ReactiveCocoa.h>
@interface RequestViewModel : NSObject<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong, readonly) RACCommand *reuqesCommand;

@property (nonatomic, strong) RACSubject *signal;

//模型数组
@property (nonatomic, strong) NSArray *models;

@end
