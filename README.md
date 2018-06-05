# JDDAlertView
自定义AlertView弹框->依赖Masonry

设置使用链式结构
Example:
```
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
```    
