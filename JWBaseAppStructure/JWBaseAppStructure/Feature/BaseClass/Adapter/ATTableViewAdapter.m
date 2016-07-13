//
//  ATTableViewAdapter.m
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/26.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import "ATTableViewAdapter.h"

@implementation ATTableViewAdapter

#pragma mark - UITableView DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if ([self.adapterArray.firstObject isKindOfClass:[NSArray class]]) {
        return self.adapterArray.count;
    }
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if ([self.adapterArray.firstObject isKindOfClass:[NSArray class]]) {
        return ((NSArray *)self.adapterArray[section]).count;
    }
    return self.adapterArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id cellData = nil;
    if ([self.adapterArray.firstObject isKindOfClass:[NSArray class]]) {
        cellData = self.adapterArray[indexPath.section][indexPath.row];
    }
    cellData = [self.adapterArray objectAtIndex:indexPath.row];
    
    UITableViewCell* cell = NULL;
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    
    cell = [self performSelector:NSSelectorFromString([NSString stringWithFormat:@"tableView:cellFor%@:", [cellData class]]) withObject:tableView withObject:cellData];
    
#pragma clang diagnostic pop
    
    return cell;
}

#pragma mark    UITableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:false];
    
    id cellData = [self.adapterArray objectAtIndex:indexPath.row];
    if (self.adapterDelegate) {
        if ([_adapterDelegate respondsToSelector:@selector(didSelectCellData:index:)]) {
            [_adapterDelegate didSelectCellData:cellData index:indexPath];
        }
    }
}

@end
