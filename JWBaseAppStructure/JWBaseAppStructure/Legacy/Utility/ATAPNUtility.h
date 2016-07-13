//
//  ATAPNUtility.h
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/25.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//  推送通知工具

#import <Foundation/Foundation.h>

@interface ATAPNUtility : NSObject

+ (void)registerAppAPN;
+ (BOOL)appAPNEnabled;
@end
