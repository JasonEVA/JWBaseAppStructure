//
//  ATURLConfig.h
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/26.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#ifndef ATURLConfig_h
#define ATURLConfig_h

#define INTERLINE 1 // 内外网切换

#if INTERLINE
/********************内网************************/
static NSString *const kURLAddress = @"http://192.168.4.144:3000/v1"; // 内网接口
#else
/********************外网************************/
static NSString *const kURLAddress =@"http://121.42.165.52:1003/v1"; // 外网接口
#endif


#endif /* ATURLConfig_h */
