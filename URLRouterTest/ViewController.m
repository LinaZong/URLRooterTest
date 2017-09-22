//
//  ViewController.m
//  URLRouterTest
//
//  Created by 宗丽娜 on 2017/9/21.
//  Copyright © 2017年 宗丽娜. All rights reserved.
//

#import "ViewController.h"
#import <HHRouter/HHRouter.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"简单跳转" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(toPush) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [self.view addSubview:btn];
    
    UIButton * btn1 = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 30)];
    btn1.backgroundColor = [UIColor grayColor];
    [btn1 setTitle:@"带值跳转" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(toPushP:) forControlEvents:UIControlEventTouchUpInside];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [self.view addSubview:btn1];
    
    

}
-(void)toPush{
    
    UIViewController * view = [[HHRouter shared]matchController:@"test"];
    [self presentViewController:view animated:YES completion:^{
        
    }];
}


-(void)toPushP:(UIButton *)btn{
    UIViewController * view = [[HHRouter shared]matchController:@"/testPra/1/Zax/"];
    [self presentViewController:view animated:YES completion:^{
        
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
