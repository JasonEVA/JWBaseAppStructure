//
//  ATTableView.m
//  JWBaseAppStructure
//
//  Created by jasonwang on 16/3/4.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import "ATTableView.h"

@implementation ATTableView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.dataTableView = [[UITableView alloc] init];
        self.dataTableView.frame = self.bounds;
        UIView *backView = [[UIView alloc] init];
        backView.backgroundColor = [UIColor whiteColor];
        self.dataTableView.backgroundView = backView;
        self.dataTableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.dataTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //        if ([self.dataTableView respondsToSelector:@selector(setSectionIndexBackgroundColor:)]) {
        //            [self.dataTableView setSectionIndexBackgroundColor:[UIColor clearColor]];
        //        }
        //        if ([self.dataTableView respondsToSelector:@selector(setSectionIndexColor:)]) {
        //            [self.dataTableView setSectionIndexColor:[UIColor colorWithHex:0xbababa]];
        //        }
        [self addSubview:self.dataTableView];
        
    }
    return self;
}

- (void)setTableViewAdapter:(ATTableViewAdapter *)tableViewAdapter
{
    self.dataTableView.delegate = tableViewAdapter;
    self.dataTableView.dataSource = tableViewAdapter;
}

- (void)refreshTableView
{
    [self.dataTableView reloadData];
}

- (void)dealloc
{
    self.dataTableView.delegate = nil;
    self.dataTableView.dataSource = nil;
    self.dataTableView = nil;
}

@end
