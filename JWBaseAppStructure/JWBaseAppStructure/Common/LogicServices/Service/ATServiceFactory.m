//
//  ATServiceFactory.m
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/26.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import "ATServiceFactory.h"

@implementation ATServiceFactory
+ (ATServiceFactory *)sharedInstance {
    static ATServiceFactory *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ATServiceFactory alloc] init];
    });
    return sharedInstance;
}

@end
