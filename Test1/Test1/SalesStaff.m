//
//  SalesStaff.m
//  Test1
//
//  Created by 张伟 on 2019/5/26.
//  Copyright © 2019年 张伟. All rights reserved.
//

#import "SalesStaff.h"

@implementation SalesStaff
-(instancetype)init{
    if(self = [super init]){
        self.name = @"销售员工";
        self.basic_salary = 5000; //基本工资
    }
    return self;
}

-(int)salary{
    
    //根据销售总金额范围计算提成
    
    if(_sales_amount<10000){
        _sales_amount = (_sales_amount+_sales_amount * 0.1);
    }else if(_sales_amount>=10000 && _sales_amount<=100000){
        _sales_amount = (_sales_amount+_sales_amount * 0.15);
    }else{
        _sales_amount = (_sales_amount+_sales_amount * 0.18);
    }
    
    return _sales_amount+self.basic_salary;
}
@end
