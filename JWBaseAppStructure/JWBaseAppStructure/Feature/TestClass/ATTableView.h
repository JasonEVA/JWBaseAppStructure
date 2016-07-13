//
//  ATTableView.h
//  JWBaseAppStructure
//
//  Created by jasonwang on 16/3/4.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ATTableViewAdapter.h"

@interface ATTableView : UIView
@property (nonatomic, strong) UITableView *dataTableView;

- (void)setTableViewAdapter:(ATTableViewAdapter *)tableViewAdapter;
- (void)refreshTableView;
@end
