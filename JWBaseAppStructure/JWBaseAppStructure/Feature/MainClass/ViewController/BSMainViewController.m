//
//  BSMainViewController.m
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/29.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import "BSMainViewController.h"
#import "ATBaseNavigationViewController.h"
#import "ATTestViewController.h"
@interface BSMainViewController ()

@end

@implementation BSMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self.navigationItem setTitle:@"主页"];
    ATTestViewController *VC = [[ATTestViewController alloc] init];
    ATBaseNavigationViewController *naVC = [[ATBaseNavigationViewController alloc] initWithRootViewController:VC];
    [self setViewControllers:@[naVC]];
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
