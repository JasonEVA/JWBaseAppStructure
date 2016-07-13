//
//  ATTableViewAdapter.h
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/26.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ATTableViewAdapterDelegate <NSObject>

@optional
- (void)didSelectCellData:(id)cellData index:(NSIndexPath *)indexPath;
- (void)deleteCellData:(id)cellData;
@end

@interface ATTableViewAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong)  NSMutableArray  *adapterArray; // 数据源
@property (nonatomic, weak)  id<ATTableViewAdapterDelegate>  adapterDelegate; // <##>
@end
