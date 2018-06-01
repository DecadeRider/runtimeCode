//
//  myclass.m
//  runtimeCode
//
//  Created by 黎永杰 on 2018/4/17.
//  Copyright © 2018年 黎永杰. All rights reserved.
//

#import "myclass.h"

@implementation myclass

-(instancetype)init
{
    self = [super init];
    if (self) {
        [self showName];
    }
    return self;
}


-(void)showName
{
    NSLog(@"杰");
}

@end
