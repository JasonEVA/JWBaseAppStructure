//
//  ATCurrentUserService.h
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/26.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//  当前用户信息管理类

#import <Foundation/Foundation.h>

@interface ATCurrentUserService : NSObject

+ (ATCurrentUserService *)sharedInstance;

- (BOOL)loginStatus;
@end
