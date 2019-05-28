#import "ViewController.h"

@interface ViewController ()
@end
@implementation ViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    [self traverseDir:@"/Users/zhangwei/desktop/Test2"];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) traverseDir:(NSString *) path{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *basePath = path;
    //获取basepath文件夹下所有内容（文件与文件夹）
    NSArray *dirArray =[fileManager contentsOfDirectoryAtPath:basePath error:nil];
    for(int i=0; i<dirArray.count; i++){
        //取得文件或文件夹名称'
        NSString *subFileName = [dirArray objectAtIndex:i];
        //取得文件或文件夹的全路径
        NSString *subPath = [basePath stringByAppendingPathComponent:subFileName];
        //取得文件或文件夹的属性
        NSDictionary *attibuteDict = [fileManager attributesOfItemAtPath:subPath error:nil];
        //判断是文件或文件夹
        if([attibuteDict[NSFileType] isEqualToString:NSFileTypeDirectory]){
            NSLog(@"%@ is dir",subFileName);
            //查看文件夹内是否存在文件，若存在执行递归函数
            BOOL isExist = [fileManager fileExistsAtPath:subPath isDirectory:NO];
            if(isExist){
                [self traverseDir:subPath];
            }
        }else{
            NSLog(@"%@ is file",subFileName);
        }
    }
}
@end
