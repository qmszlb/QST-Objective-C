//
//  OrdinaryEmployees.m
//  Test1
//
//  Created by 张伟 on 2019/5/26.
//  Copyright © 2019年 张伟. All rights reserved.
//

#import "OrdinaryEmployees.h"

@implementation OrdinaryEmployees
-(instancetype)init{
    if(self = [super init]){
        self.name = @"普通员工";
        self.basic_salary = 5000;
    }
    return self;
}

-(int)salary{
    
    //根据工作小时再次计算工资
    if(_hours>196){
        
        self.basic_salary=(_hours-196)*200+self.basic_salary;
        
    }
    return self.basic_salary;
}
@end
