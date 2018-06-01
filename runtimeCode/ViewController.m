//
//  ViewController.m
//  runtimeCode
//
//  Created by 黎永杰 on 2018/2/26.
//  Copyright © 2018年 黎永杰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [NSURL URLWithString:@"www.baidu.com"];
    NSLog(@"%@",url);
    
    
    NSMutableArray *arr = [[NSMutableArray alloc]init];
    [arr addObject:@"1"];
    [arr addObject:@"2"];
    [arr addObject:@"3"];
//    [arr addObject:nil];
    NSLog(@"%@",arr);
}


-(void)showMessege
{
    NSLog(@"lllala");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
