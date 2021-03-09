//
//  ViewController.m
//  symbolTest
//
//  Created by 李斌 on 2021/3/5.
//

#import "ViewController.h"
#import "LBObj.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSString * className = [NSString stringWithFormat:@"LB%@",@"Obj"];
    Class obj = NSClassFromString(className);
    
    NSString * funcName = [NSString stringWithFormat:@"lbTest%@",@"Func"];
    [[obj new] performSelector:NSSelectorFromString(funcName)];
}
@end
