//
//  ATTestAdapter.m
//  JWBaseAppStructure
//
//  Created by jasonwang on 16/3/4.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import "ATTestAdapter.h"
#import "ATTestModel.h"

@implementation ATTestAdapter

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return 10;
//}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *ID = @"myCell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
//    }
//    return cell;
//    
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForATTestModel:(id)cellModel
{
    NSString *cellIdentifier = NSStringFromSelector(_cmd);
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if ([cellModel isKindOfClass:[ATTestModel class]]) {
        ATTestModel *model = (ATTestModel *)cellModel;
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
    }
        [[cell textLabel] setText:model.name];
    return cell;
    }
    return nil;
}


//- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 1;
//}
@end
