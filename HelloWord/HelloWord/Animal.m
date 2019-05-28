//
//  Animal.m
//  HelloWord
//
//  Created by 张伟 on 2019/5/25.
//  Copyright © 2019年 张伟. All rights reserved.
//

#import "Animal.h"

@implementation Animal
-(instancetype)init{//判断初始化是否成功
    if (self = [super init]) {
        name = @"jack";
    }
    return self;
}
/* 
 self = [super init];
 if (self != nil){
      name = @"jack"}
 return self;
 }*/
-(id)initWithName:(NSString*)namePara;{

    if (self = [super init]){ //1.初始化 2.将初始化的对象赋值给self 3.判断是否初始化成功
    
        name = namePara;
    
    }
    return self;
}

-(NSString *)name{
    return name;
}
-(void)setName:(NSString *)nameParam{
    name = nameParam;
}

-(void)eat{
    NSLog(@"Animal can eat...");
}
-(void)drink:(NSString *)water andWater2:(NSString *)water2{
  
};
@end
