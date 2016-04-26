//
//  ViewController.m
//  日历
//
//  Created by 叶慧伟 on 16/4/6.
//  Copyright © 2016年 叶慧伟. All rights reserved.
//

#import "ViewController.h"
#import "XTCalendar.h"

@interface ViewController ()

@property (nonatomic, assign)NSInteger offsetMonth;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //个人技术原因，觉的图大小不对可以去calendar里面修改高度比例
    XTCalendar *calendar = [[XTCalendar alloc]initWithHeraderBackGroundColor:[UIColor purpleColor] andFrame:CGRectMake(10, 100, 300, 350)];
//    calendar.todayColor = [UIColor yellowColor];
//    calendar.todayBackColor = [UIColor greenColor];
//    calendar.beforeDayBackColor = [UIColor blueColor];
//    calendar.beforeDayColor = [UIColor orangeColor];
//    calendar.emptyColor = [UIColor cyanColor];
    [self.view addSubview:calendar];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
