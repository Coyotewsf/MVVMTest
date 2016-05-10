//
//  Book.m
//  MVVMTest
//
//  Created by 海玩 on 16/4/28.
//  Copyright © 2016年 haiwan. All rights reserved.
//

#import "Book.h"

@implementation Book
+ (instancetype)bookWithDict:(NSDictionary *)dic {
    if ([dic isKindOfClass:[NSDictionary class]]) {
        Book *book = [[Book alloc] init];
        book.subtitle = dic[@"subtitle"];
        book.title = dic[@"title"];
        return book;
    }
    return nil;
}
@end
