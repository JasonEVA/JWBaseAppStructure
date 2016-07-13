//
//  ATAPNUtility.m
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/25.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import "ATAPNUtility.h"
#import <UIKit/UIKit.h>

@implementation ATAPNUtility

+ (BOOL)appAPNEnabled {
    BOOL pushEnabled;
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) {
        // 设置里的通知总开关是否打开
        BOOL settingEnabled = [[UIApplication sharedApplication] isRegisteredForRemoteNotifications];
        // 设置里的通知各子项是否都打开
        BOOL subsettingEnabled = [[UIApplication sharedApplication] currentUserNotificationSettings].types != UIUserNotificationTypeNone;
        
        pushEnabled = settingEnabled && subsettingEnabled;
    } else {
        NSInteger enabledNotifType = [[UIApplication sharedApplication] enabledRemoteNotificationTypes];
        pushEnabled = (enabledNotifType != UIRemoteNotificationTypeNone);
    }
    return pushEnabled;
}

+ (void)registerAppAPN {
    // 消息推送注册
    if([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
    {
        [[UIApplication sharedApplication] registerUserNotificationSettings:
        [UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge)
                                           categories:nil]];
        [[UIApplication sharedApplication] registerForRemoteNotifications];
        
    }
    else
    {
        //注册启用push
        [[UIApplication sharedApplication] registerForRemoteNotificationTypes:(UIRemoteNotificationTypeSound | UIRemoteNotificationTypeAlert | UIRemoteNotificationTypeBadge)];
    }

}
@end
