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
    
    XTCalendar *calendar = [[XTCalendar alloc]initWithHeaderBackGroundColor:[UIColor purpleColor] andLeftPoint:CGPointMake(5, 100)];
//    calendar.
    
    [self.view addSubview:calendar];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
