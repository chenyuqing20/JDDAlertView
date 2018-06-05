//
//  ViewController.m
//  JDDAlertView-master
//
//  Created by 盒子 on 2018/6/5.
//  Copyright © 2018年 盒子. All rights reserved.
//

#import "ViewController.h"
#import "JDDAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)alertClick:(id)sender {
    JDDAlertView *alert = [[JDDAlertView alloc] initJDDAlertWithTitle:nil andMessage:@"你准备好了吗？\n你真的准备好了吗?\n你真的真的准备好了吗?\n是的，我已经准备好啦\n哈哈哈"]
    .leftBtnText(@"取消")
    .rightBtnText(@"立刻登录")
    .titleFontSize(20)
    .messageFontSize(18)
    .leftBtnTextColor([UIColor greenColor])
    .rightBtnTextColor([UIColor redColor])
    .leftBtnFontSize(18)
    .rightBtnFontSize(18);
    [alert show];
    alert.alertHandelBlock = ^(NSInteger index, id data) {
        NSLog(@"alert click index = %ld",(long)index);
        
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
