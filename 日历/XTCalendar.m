//
//  XTCalendar.m
//  日历
//
//  Created by 叶慧伟 on 16/4/21.
//  Copyright © 2016年 叶慧伟. All rights reserved.
//

#import "XTCalendar.h"
#import "XTCalendarHeaderView.h"
#import "XTCalendarView.h"

//#define toDayTextColorNotification @"toDayTextColorNotification"

@interface XTCalendar ()

@property (nonatomic, strong)XTCalendarHeaderView *headerView;
@property (nonatomic, strong)XTCalendarView *calendarView;

@property (nonatomic, assign)NSInteger offsetMonth;

@end

@implementation XTCalendar

- (instancetype)initWithHeaderBackGroundColor:(UIColor *)color andLeftPoint:(CGPoint)leftPoint{
    if (self == [super init]) {
        self.frame = CGRectMake(leftPoint.x, leftPoint.y, [UIScreen mainScreen].bounds.size.width - 10, 340);
        self.headerView.backgroundColor = color;
        [self setUI];
    }
    return self;
}

- (void)setUI{
    
    [self addSubview:self.headerView];
    [self addSubview:self.calendarView];
    
    [self.headerView changMonthInHeader:self.offsetMonth];
    
    __weak typeof(self) weakself = self;
    self.headerView.plusBlock = ^(){
        
        weakself.offsetMonth ++;
        [weakself.headerView changMonthInHeader:weakself.offsetMonth];
        [weakself.calendarView creatDataOffsetMonth:weakself.offsetMonth];
    };
    
    self.headerView.reduceBlock = ^(){
        
        weakself.offsetMonth --;
        [weakself.headerView changMonthInHeader:weakself.offsetMonth];
        [weakself.calendarView creatDataOffsetMonth:weakself.offsetMonth];
    };
    
//    [[NSNotificationCenter defaultCenter]postNotificationName:toDayTextColorNotification object:self.todayColor];

}

- (XTCalendarHeaderView *)headerView{
    if (_headerView == nil) {
        _headerView = [[XTCalendarHeaderView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, 40)];
    }
    return _headerView;
}

- (XTCalendarView *)calendarView{
    if (_calendarView == nil) {
        _calendarView = [[XTCalendarView alloc]initWithFrame:CGRectMake(0, 40, self.frame.size.width, 300)];
    }
    return _calendarView;
}

@end
