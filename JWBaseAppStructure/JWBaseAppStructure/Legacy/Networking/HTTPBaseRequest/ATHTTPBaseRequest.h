//
//  ATHTTPBaseRequest.h
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/26.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@class ATHTTPBaseRequest;



@interface ATHTTPBaseResponse : NSObject

@property (nonatomic, copy)  NSString  *message; // <##>
@property(nonatomic,retain) NSDictionary *data;

@end

@protocol ATHTTPBaseRequestDelegate <NSObject>
// 成功和错误返回
@optional
// 成功
- (void)requestSucceed:(ATHTTPBaseRequest *)request response:(ATHTTPBaseResponse *)response;

- (void)requestProgress:(CGFloat)progress request:(ATHTTPBaseRequest *)request;

// 失败
- (void)requestFail:(ATHTTPBaseRequest *)request response:(ATHTTPBaseResponse *)response;

@end

@interface ATHTTPBaseRequest : NSObject

@property (nonatomic, strong)       NSString *action;                          // 动作
@property (nonatomic, strong)       NSString *fileDictName;                    // 文件字段名

@property (nonatomic, strong)       NSMutableDictionary *params;            //post传递参数
@property (nonatomic, weak)         id<ATHTTPBaseRequestDelegate> delegate;      //回调的委托

/**
 *  请求的数据整理
 */
- (void)prepareRequest;

/**
 *  返回的数据
 *
 *  @param data 返回的数据
 *
 *  @return 返回数据
 */
- (ATHTTPBaseResponse *)prepareResponse:(NSDictionary *)data;

/**
 *  请求数据
 *
 *  @param delegate 委托
 *
 *  @return 请求
 */
- (void)requestWithDelegate:(id<ATHTTPBaseRequestDelegate>)delegate;

/**
 *  请求数据 (GET)
 *
 *  @param delegate 委托
 *
 *  @return 请求
 */
- (void)requestGetWithDelegate:(id<ATHTTPBaseRequestDelegate>)delegate;

// Get请求
- (void)requestGetWithDelegate:(id<ATHTTPBaseRequestDelegate>)delegate URL:(NSString *)urlString parameters:(NSDictionary *)params;

/**
 *  请求数据 上传附件（单张）
 *
 *  @return 请求
 */
// 上传图片
- (void)requestWithDelegate:(id<ATHTTPBaseRequestDelegate>)delegate data:(NSData *)imageData;

@end

