//
//  TestObj.m
//  AYBaseSDK
//
//  Created by 陈䶮 on 2019/12/28.
//  Copyright © 2019 陈䶮. All rights reserved.
//

#import "TestObj.h"

@implementation TestObj

- (instancetype)init
{
   self = [super init];
   if (self) {
     NSInteger a = 10;
     NSInteger b = 20;
     NSLog(@"+++++++%ld++++++",a+b);
   }
   return self;
}

+ (TestObj *)returnVaule {
    static TestObj *obj = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        obj = [[self alloc] init];
    });
    return obj;
}

@end
