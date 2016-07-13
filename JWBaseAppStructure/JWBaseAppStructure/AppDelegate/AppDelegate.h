//
//  AppDelegate.h
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/25.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ATAppConfig.h"
#import "ATAppInteractor.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong)  ATAppConfig  *appConfig; // <##>
@property (nonatomic, strong)  ATAppInteractor  *appInteractor; // <##>

@end

