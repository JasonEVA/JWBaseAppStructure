//
//  ATAppInteractor.m
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/25.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import "ATAppInteractor.h"
#import "ATCurrentUserService.h"
#import "BSLoginViewController.h"
#import "BSMainViewController.h"
#import "ATBaseNavigationViewController.h"

@implementation ATAppInteractor

- (instancetype)initWithKeyWindow:(UIWindow *)keyWindow
{
    self = [super init];
    if (self) {
        self.keyWindow = keyWindow;
        [self startUIFlow];
    }
    return self;
}

- (void)startUIFlow {
    if ([[ATCurrentUserService sharedInstance] loginStatus]) {
        [self startMain];
    } else {
        [self startLogin];
    }
}

- (void)startLogin {
    if (!self.loginController) {
        self.loginController = [[BSLoginViewController alloc] init];
    }
    
    if (self.mainController) {
        self.mainController = nil;
    }
    ATBaseNavigationViewController *navi = [[ATBaseNavigationViewController alloc] initWithRootViewController:self.loginController];
    self.keyWindow.rootViewController = navi;
}

- (void)startMain {
    
    if (!self.mainController) {
        self.mainController = [[BSMainViewController alloc] init];
    }
    
    if (self.loginController) {
        self.loginController = nil;
    }
    self.keyWindow.rootViewController = self.mainController;
}

- (void)logoutAction {
    // TODO: clean something
    
    [self startLogin];
}


@end
