//
//  Employees.h
//  Test1
//
//  Created by 张伟 on 2019/5/26.
//  Copyright © 2019年 张伟. All rights reserved.
//

#import <Foundation/Foundation.h>


//员工类


@interface Employees : NSObject

@property(nonatomic, strong) NSString *name; //姓名


@property(nonatomic, assign) int basic_salary; //基本工资

-(int)salary;
@end
