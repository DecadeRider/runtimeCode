//
//  NSURL+url.m
//  runtimeCode
//
//  Created by 黎永杰 on 2018/2/26.
//  Copyright © 2018年 黎永杰. All rights reserved.
//

#import "NSURL+url.h"
#import <objc/runtime.h>
@implementation NSURL (url)

+(void)load
{
    Method formMehod = class_getClassMethod([NSURL class], @selector(URLWithString:));
//    Method toMethod = class_getInstanceMethod([NSURL class], @selector(jie_UrlWithstring:));
    Method toMethod = class_getClassMethod([NSURL class], @selector(jie_UrlWithstring:));
    method_exchangeImplementations(formMehod, toMethod);
    
}



+(instancetype)jie_UrlWithstring:(NSString *)str
{
    NSURL *url = [NSURL jie_UrlWithstring:str];
    NSLog(@"我进来了:%@",str);
    return url;
}

@end
