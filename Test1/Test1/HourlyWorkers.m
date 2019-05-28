//
//  HourlyWorkers.m
//  Test1
//
//  Created by 张伟 on 2019/5/26.
//  Copyright © 2019年 张伟. All rights reserved.
//

#import "HourlyWorkers.h"

@implementation HourlyWorkers
-(instancetype)init{
    if(self = [super init]){
        self.name = @"小时工";
    }
    return self;
}

-(int)salary{
    return _hours * _hours_salary;
}
@end
