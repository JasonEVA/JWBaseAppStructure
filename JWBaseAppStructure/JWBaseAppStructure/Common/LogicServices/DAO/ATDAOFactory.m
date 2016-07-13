//
//  ATDAOFactory.m
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/26.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import "ATDAOFactory.h"

@implementation ATDAOFactory
+ (ATDAOFactory *)sharedInstance {
    static ATDAOFactory *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ATDAOFactory alloc] init];
    });
    return sharedInstance;
}
@end
