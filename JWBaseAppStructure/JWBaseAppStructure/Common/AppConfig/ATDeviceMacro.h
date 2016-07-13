//
//  ATDeviceMacro.h
//  JWBaseAppStructure
//
//  Created by Andrew Shen on 16/2/26.
//  Copyright © 2016年 Andrew Shen. All rights reserved.
//

#ifndef ATDeviceMacro_h
#define ATDeviceMacro_h

// UUID
#define DEVICE_UUID [[[UIDevice currentDevice] identifierForVendor] UUIDString]

// TYPE
#define DEVICE_TYPE [[UIDevice currentDevice] model]

// SYSTEM_VERSION
#define SYSTEM_VER [[UIDevice currentDevice] systemVersion]

// SYSTEM_NAME
#define SYSTEM_NAME [[UIDevice currentDevice] systemName]


#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

#endif /* ATDeviceMacro_h */
