//
//  XTCollectionCell.m
//  日历
//
//  Created by 叶慧伟 on 16/4/19.
//  Copyright © 2016年 叶慧伟. All rights reserved.
//

#import "XTCollectionCell.h"

//#define toDayTextColorNotification @"toDayTextColorNotification"

@implementation XTCollectionCell

- (instancetype)initWithFrame:(CGRect)frame{
    if (self == [super initWithFrame: frame]) {
        [self addSubview:self.titleLabel];
    }
    return self;
}

- (void)setCalendar:(CalendarModel *)calendar{
    _calendar = calendar;
    
    self.titleLabel.text = calendar.text;
    
    if (calendar.isToday) {
        self.titleLabel.textColor = [UIColor whiteColor];
        self.titleLabel.backgroundColor = [UIColor lightGrayColor];
    }else{
        self.titleLabel.textColor = [UIColor blackColor];
        self.titleLabel.backgroundColor = [UIColor whiteColor];
    }
    
    if (calendar.text.length == 0) {
        self.titleLabel.text  = @"";
        self.titleLabel.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor colorWithRed:240/255 green:240/255 blue:240/255 alpha:0.1];
    }
    if ([self.titleLabel.text isEqualToString:@"周六"] || [self.titleLabel.text isEqualToString:@"周日"]) {
        self.titleLabel.textColor = [UIColor redColor];
    };
    
    if (calendar.isBeforeDay) {
        self.titleLabel.textColor = [UIColor lightGrayColor];
    }
    
//    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(changTodayColor:) name:toDayTextColorNotification object:nil];
}

//- (void)changTodayColor:(NSNotification *)noti{
//    if (self.calendar.isToday) {
//         self.titleLabel.textColor = noti.object;
//    }
//}

- (UILabel *)titleLabel{
    if (_titleLabel == nil) {
        _titleLabel = [[UILabel alloc]initWithFrame:self.bounds];
        _titleLabel.font = [UIFont systemFontOfSize:13];
        _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLabel;
}

@end
