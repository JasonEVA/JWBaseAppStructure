//
//  ATLog.m
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/26.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import "ATLog.h"
static BOOL ATLogEnableStatus = NO;
static BOOL ATLogInitStatus = NO;

@implementation ATLog

+ (void)configLogEnable:(BOOL)enable
{
    ATLogEnableStatus = enable;
    if(!ATLogInitStatus) {
        ATLogInitStatus= YES;
        [self redirectNSLogToFile];
    }
}

+ (void)redirectNSLogToFile
{
    //如果已经连接Xcode调试则不输出到文件
    if(!ATLogEnableStatus || isatty(STDOUT_FILENO)) {
        return;
    }
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *logDirectory = [[paths objectAtIndex:0] stringByAppendingPathComponent:@"Log"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL fileExists = [fileManager fileExistsAtPath:logDirectory];
    if (!fileExists) {
        [fileManager createDirectoryAtPath:logDirectory  withIntermediateDirectories:YES attributes:nil error:nil];
    }
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"]];
    [formatter setDateFormat:@"yyyy-MM-dd"]; //每次启动后都保存一个新的日志文件中
    NSString *dateStr = [formatter stringFromDate:[NSDate date]];
    NSString *logFilePath = [logDirectory stringByAppendingFormat:@"/%@.log",dateStr];
    
    // 将log输入到文件
    freopen([logFilePath cStringUsingEncoding:NSASCIIStringEncoding], "a+", stdout);
    freopen([logFilePath cStringUsingEncoding:NSASCIIStringEncoding], "a+", stderr);
    
}

+ (BOOL)logEnableStatus
{
    return ATLogEnableStatus;
}

@end
