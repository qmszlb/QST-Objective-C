//
//  ViewController.m
//  简单计算器
//
//  Created by 张伟 on 2019/6/1.
//  Copyright © 2019年 张伟. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int num;
}

@property (weak, nonatomic) IBOutlet UITextField *nameTextField1;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField2;
@property (weak, nonatomic) IBOutlet UITextField *type;

@property (weak, nonatomic) IBOutlet UILabel *result;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)action:(id)sender {
    int num = [[self.type text] intValue];
    int num1 = [[self.nameTextField1 text] intValue];
    int num2 = [[self.nameTextField2 text] intValue];
    if(num == 1){
        int result = num1 + num2;
        NSLog(@"result:%d",result);
        self.result .text = [NSString stringWithFormat:@"加法运算结果为:%d",result];
    }
    else if(num == 2){
        int result = num1 - num2;
        NSLog(@"result:%d",result);
        self.result .text = [NSString stringWithFormat:@"减法运算结果为:%d",result];
        
    }
    
    else if(num == 3){
        int result = num1 * num2;
        NSLog(@"result:%d",result);
        self.result .text = [NSString stringWithFormat:@"乘法运算结果为:%d",result];
        
    }
    
    else if (num == 4){
        int result = num1 / num2;
        NSLog(@"result:%d",result);
        self.result .text = [NSString stringWithFormat:@"除法运算结果为:%d",result];
        
    }
    
}

@end
