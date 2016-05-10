//
//  Book.h
//  MVVMTest
//
//  Created by 海玩 on 16/4/28.
//  Copyright © 2016年 haiwan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
@property (nonatomic, copy) NSString *subtitle;

@property (nonatomic, copy) NSString *title;

+ (instancetype)bookWithDict:(NSDictionary *)dic;

@end
