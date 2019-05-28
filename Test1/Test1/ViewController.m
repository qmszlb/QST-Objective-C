//
//  ViewController.m
//  Test1
//
//  Created by 张伟 on 2019/5/26.
//  Copyright © 2019年 张伟. All rights reserved.
//

#import "ViewController.h"
#import "Employees.h"
#import "OrdinaryEmployees.h"
#import "SalesStaff.h"
#import "HourlyWorkers.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    
    Employees *employees = [[Employees alloc]init];
    HourlyWorkers *hw = [[HourlyWorkers alloc]init];
    SalesStaff *ss = [[SalesStaff alloc]init];
    OrdinaryEmployees *oe = [[OrdinaryEmployees alloc]init];
    
    
    int salary;
    
    //小时工工资计算
    hw.hours = 3;
    hw.hours_salary = 2;
    salary = [hw salary];
    NSLog(@"%@的总工资为%i元",hw.name,salary);
    
    //销售人员工资计算
    ss.sales_amount = 10000;
    salary = [ss salary];
    NSLog(@"%@的总工资为%i元",ss.name,salary);
    
    //普通员工工资计算
    oe.hours = 197;
    salary = [oe salary];
    NSLog(@"%@的总工资为%i元",oe.name,salary);
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
