//
//  Animal.h
//  HelloWord
//
//  Created by 张伟 on 2019/5/25.
//  Copyright © 2019年 张伟. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject{
    NSString *name;
    
}
//自动生成 sex的getter和setter方法
@property(nonatomic,assign) int salary;//薪水
@property(nonatomic,strong) NSString *sex;//性别
-(id)initWithName:(NSString*)name;//
- (NSString*)name;
//public String getName();


- (void)setName:(NSString*)nameParam;
//public void setName(String nameParam);

-(void) eat;
-(void) drink:(NSString*) water andWater2 :(NSString*)water2;
@end
