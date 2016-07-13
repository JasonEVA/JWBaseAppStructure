//
//  ATAppInteractor.h
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/25.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//  应用入口逻辑，登录，注销，主界面的切换

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ATAppInteractor : NSObject

@property (nonatomic, strong) UIWindow    *keyWindow; // <##>

@property (nonatomic, strong)  UIViewController  *mainController; // 主界面
@property (nonatomic, strong)  UIViewController  *loginController; // 登录页

- (instancetype)initWithKeyWindow:(UIWindow *)keyWindow;

// Optional
- (void)startUIFlow;
- (void)startLogin;
- (void)startMain;
- (void)logoutAction;
@end
