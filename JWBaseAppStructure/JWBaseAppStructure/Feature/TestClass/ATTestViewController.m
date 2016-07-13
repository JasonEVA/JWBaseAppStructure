//
//  ATTestViewController.m
//  JWBaseAppStructure
//
//  Created by jasonwang on 16/3/4.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import "ATTestViewController.h"
#import "ATTestSecondView.h"
#import "ATTestAdapter.h"
#import "ATTestModel.h"

@interface ATTestViewController ()<ATTableViewAdapterDelegate>
@property (strong ,nonatomic) ATTestSecondView *myView;
@property (nonatomic, strong) ATTestAdapter *myAdapter;
@end

@implementation ATTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"Jason Test"];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.myView = [[ATTestSecondView alloc] initWithFrame:self.view.frame];
    self.view = self.myView;
    self.myAdapter = [ATTestAdapter new];
    NSMutableArray *arr = [NSMutableArray new];
    for (int i = 1; i < 20; i++) {
        ATTestModel *model = [[ATTestModel alloc] init];
        model.name = @"just test";
        [arr addObject:model];
        
    }
    self.myAdapter.adapterArray = arr;
    [self.myAdapter setAdapterDelegate:self];
    [self.myView setTableViewAdapter:self.myAdapter];
    
    // Do any additional setup after loading the view.
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
