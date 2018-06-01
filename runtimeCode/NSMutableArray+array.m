//
//  NSMutableArray+array.m
//  runtimeCode
//
//  Created by 黎永杰 on 2018/2/26.
//  Copyright © 2018年 黎永杰. All rights reserved.
//

#import "NSMutableArray+array.h"
#import <objc/runtime.h>
@implementation NSMutableArray (array)

+(void)load
{
    Method formMethod = class_getClassMethod([NSMutableArray class], @selector(addObject:));
    Method toMehod = class_getClassMethod([NSMutableArray class], @selector(jie_addobject:));
    method_exchangeImplementations(formMethod, toMehod);
}


+(void)jie_addobject:(id)obj
{
    if (obj != nil) {
        [NSMutableArray jie_addobject:obj];
    }
}

@end
