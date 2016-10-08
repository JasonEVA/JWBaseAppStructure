//
//  ATBaseViewController.m
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/26.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import "ATBaseViewController.h"
#import "UIViewController+Loading.h"

@interface ATBaseViewController ()<UIGestureRecognizerDelegate>

@end

@implementation ATBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setEdgesForExtendedLayout:UIRectEdgeNone];
    //    [self setExtendedLayoutIncludesOpaqueBars:NO];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    [self.navigationItem setBackBarButtonItem:backItem];
    //滑动返回
    __weak typeof(self) weakSelf = self;
    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        [self.navigationController interactivePopGestureRecognizer].delegate = weakSelf;
    }


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    NSLog(@"-------------->%@,%s,%d",NSStringFromClass(self.class),__FUNCTION__,__LINE__);
}


@end
