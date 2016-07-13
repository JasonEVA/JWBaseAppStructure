//
//  ATTestSecondView.m
//  JWBaseAppStructure
//
//  Created by jasonwang on 16/3/4.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import "ATTestSecondView.h"

@implementation ATTestSecondView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *but = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
        [but setBackgroundColor:[UIColor redColor]];
        [self addSubview:but];
    }
    return self;
}

- (void)setTableViewAdapter:(ATTableViewAdapter *)tableViewAdapter
{
    [super setTableViewAdapter:tableViewAdapter];
    self.selectDateAdapter = (ATTestAdapter *)tableViewAdapter;
}

- (void)refreshTableView
{
    [super refreshTableView];
}

@end
