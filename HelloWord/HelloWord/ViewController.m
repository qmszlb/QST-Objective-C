//
//  ViewController.m
//  HelloWord
//
//  Created by 张伟 on 2019/5/25.
//  Copyright © 2019年 张伟. All rights reserved.
//

#import "ViewController.h"
#import "Animal.h"
#import "Tiger.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"HelloWord!");
    int num = 100;
    float f = 101.1;
    NSLog(@"num:%i,%f",num,f );
    NSString *str = @"jack";
    NSLog(@"Hellow %@ ....11111",str);
    
    int a = 10;
    int b = 100;
    int c = 30;
    int d = 40;
    int result;
    
    result = a - b;
    NSLog(@"a - b = %i",result);
    
    result = b * c;
    NSLog(@"b * c = %i",result);
    
    result = b / c;
    NSLog(@"b / c = %i",result);
    
    result = a + b * c;
    NSLog(@"a + b * c = %i",result);
    
    
    if(result == 10){
        NSLog(@"resule == 10");
    }else{
        NSLog(@"resule == 10 ");
    }
    if(str){
        NSLog(@"___str is not null");
    }else{
        NSLog(@"str is null");    }
    str = nil;
    if(str){
        NSLog(@"___str is not null");
    }else{
        NSLog(@"str is null");
    }
    Animal *animal = [[Animal alloc] init];
    //[animal setName:@"tom"] ;
    animal.sex = @"male";
    //[animal setSex:@"female"];
    
    NSLog(@"animal name:%@,sex:%@",[animal name],[animal sex]);
    [animal eat];
    Tiger *atiger =[[Tiger alloc] init];
    //Tiger atiger = new Tiger();
    [atiger eat];
    
    [atiger drink:@"11" andWater2:@"22"];
    NSLog(@"Tiger name:%@,sex:%@",[atiger name],[atiger sex]);
}

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning ];
    
}

-(void)printDesktopFiles{
    NSFileManager*fileManager = [NSFileManager defaultManager];
    NSString *basePath = @"/Users/zhangwei/Desktop";
    
    //获取basePath文件夹下的所有内容(文件与文件夹)
    NSArray *dirArray = [fileManager contentsOfDirectoryAtPath:basePath error:nil];
    for (int i = 0; i<dirArray.count;i++){
    
        //获得文件或文件夹的名称
        NSString *subFileName = [dirArray objectAtIndex:i];
        
        //获得文件夹或文件的全路径
        NSString *subPath = [basePath stringByAppendingPathComponent:subFileName];
        
        // 获得文件或文件夹的属性(map)
        NSDictionary *attibuteDict = [fileManager attributesOfItemAtPath:subPath error:nil];
        
        //判断NSFileType键值的Value是否 等于 NSFileTypeDirectory(文件夹)
        if([attibuteDict[NSFileType]isEqualToString:NSFileTypeDirectory]){
            
            NSLog(@"%@ is dir ",subFileName);
            
        }else{
            
            NSLog(@"%@ is file",subFileName);
            
       }
    }
}

@end

