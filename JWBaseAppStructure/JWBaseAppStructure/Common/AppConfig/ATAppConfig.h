//
//  ATAppConfig.h
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/25.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//  全局应用配置文件

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ATAppConfig : NSObject

@property (nonatomic, strong)  UIWindow  *keyWindow; // <##>

+ (ATAppConfig *)sharedInstance;

- (void)configApp;
- (void)configAPN;
- (void)checkAPNStatus;
@end
