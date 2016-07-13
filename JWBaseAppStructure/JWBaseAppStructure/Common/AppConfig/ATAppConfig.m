//
//  ATAppConfig.m
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/25.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import "ATAppConfig.h"
#import "ATAPNUtility.h"

@implementation ATAppConfig

#pragma mark - Interface Method
+ (ATAppConfig *)sharedInstance {
    static ATAppConfig *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ATAppConfig alloc] init];
    });
    return sharedInstance;
}

- (void)configApp {
    [self configTheme];
}

- (void)configAPN {
    [ATAPNUtility registerAppAPN];
}

- (void)checkAPNStatus {
    if (![ATAPNUtility appAPNEnabled]) {
        
        // 提示
    }

}
#pragma mark - Pravite Method

// 主题
- (void)configTheme {
    // 背景
    [[UINavigationBar appearance] setBarTintColor:[UIColor whiteColor]];
    // 文字图标
    [[UINavigationBar appearance] setTintColor:[UIColor greenColor]];

    [[UINavigationBar appearance] setTitleTextAttributes:@{
                                                           NSForegroundColorAttributeName : [UIColor whiteColor],
                                                           NSFontAttributeName : [UIFont systemFontOfSize:18]
                                                           }];
}
@end
