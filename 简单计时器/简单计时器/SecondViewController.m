#import "SecondViewController.h"

@interface SecondViewController ()
<UIPickerViewDelegate,UIPickerViewDataSource>{
    NSTimer *mytime;
    int count;
}
@property (weak, nonatomic) IBOutlet UILabel *timelable;

@property (weak, nonatomic) IBOutlet UIPickerView *mpv;

@end


@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mpv.dataSource = self;
    self.mpv.delegate = self;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//需要三个滚轮
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 3;
}
//每组滚轮选项卡的个数
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 60;
}


    -(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
        if (component == 0){
            return [NSString stringWithFormat:@"%ld小时",row];
        }
        else if (component == 1){
        return [NSString stringWithFormat:@"%ld分钟",row];
}
        return[NSString stringWithFormat:@"%ld秒",row];
    }

    - (IBAction)begain:(id)sender {
        NSInteger hour = [self.mpv selectedRowInComponent:0];
        NSInteger minute = [self.mpv selectedRowInComponent:1];
        NSInteger second = [self.mpv selectedRowInComponent:2];
            NSLog(@"hour:%1ld,minute:%1ld,second:%1ld",hour,minute,second);
            
            count = hour*60*60+minute*60+second;
        
            if(![mytime isValid]){//定时器进行初始化
                mytime= [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(comput) userInfo:nil repeats:YES];
            }
            
        }

//倒计时暂停

- (IBAction)end:(id)sender {
    [mytime invalidate];
}



//倒计时重置
- (IBAction)endBtnClicked:(id)sender {
    if(mytime)
    {
        if([mytime isValid])[mytime invalidate];
        
        mytime = nil;
        count = 0;
        self.timelable.text = [NSString stringWithFormat:@"00:00:00"];
    }
}


-(void)comput{
    
    count --;
    long hour = count/(60*60);
    long minute = (count-hour*60*60)/60;
    long second = (count-hour*60*60-minute*60);
    NSString *showStr = [NSString stringWithFormat:@"%.2ld:%.2ld:%.2ld",hour,minute,second];
    self.timelable.text = showStr;
    
    if(count <= 0){
        UIAlertController *alart = [UIAlertController alertControllerWithTitle:@"计时结束" message:nil
                                                                preferredStyle:UIAlertControllerStyleAlert];
      
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alart addAction:action];
       
        [self presentViewController:alart animated:true completion:nil];
        [mytime invalidate];
    }
    
}
@end

    
