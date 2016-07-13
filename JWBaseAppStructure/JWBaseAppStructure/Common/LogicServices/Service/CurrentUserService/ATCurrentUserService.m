//
//  ATCurrentUserService.m
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/26.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import "ATCurrentUserService.h"

@implementation ATCurrentUserService

+ (ATCurrentUserService *)sharedInstance {
    static ATCurrentUserService *shareInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[ATCurrentUserService alloc] init];
    });
    return shareInstance;
}

- (BOOL)loginStatus {
    return YES;
}

@end
