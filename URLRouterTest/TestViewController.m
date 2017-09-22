//
//  TestViewController.m
//  URLRouterTest
//
//  Created by 宗丽娜 on 2017/9/21.
//  Copyright © 2017年 宗丽娜. All rights reserved.
//

#import "TestViewController.h"
#import <HHRouter/HHRouter.h>
@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    HHRouterBlock block = [[HHRouter shared] matchBlock:@"block"];
    NSLog(@"%@", block(@{@"aaaaaa": @"aaaaa"}));
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
