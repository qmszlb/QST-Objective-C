#import "FirstViewController.h"

@interface FirstViewController (){
    NSTimer *myTime;
    int count;
}
@property (weak, nonatomic) IBOutlet UILabel *timelable;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)begain:(id)sender {
    if (![myTime isValid]) //定时器如果没有执行，则初始化。
    {
        myTime = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(repeatMethod) userInfo:nil repeats:YES];
        
    }
    
    
}
//重置
- (IBAction)endBtnClicked:(id)sender {
    if(myTime)
    {
        if([myTime isValid])[myTime invalidate];
        
        myTime = nil;
        count = 0;
        self.timelable.text = [NSString stringWithFormat:@"00:00:00"];
    }
}
- (IBAction)end:(id)sender {
    [myTime invalidate];
}
    
    -(void)repeatMethod{
        
        NSLog(@"repeatMethod");
        count++;
        int hourInt = count/(60*60);
        int minInt = (count - hourInt*60*60)/60;
        int secondInt = (count - hourInt*60*60 - minInt*60);
        NSString *showStr = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",hourInt,minInt,secondInt];
        self.timelable.text = showStr;

    }
@end
