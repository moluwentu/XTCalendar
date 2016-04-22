//
//  XTCalendar.h
//  日历
//
//  Created by 叶慧伟 on 16/4/21.
//  Copyright © 2016年 叶慧伟. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XTCalendar : UIView

- (instancetype)initWithHeaderBackGroundColor:(UIColor *)color andLeftPoint:(CGPoint)leftPoint;
//当天字体色
@property (nonatomic, strong)UIColor *todayColor;
//当天背景色
@property (nonatomic, strong)UIColor *todayBackColor;
//之前天数颜色
@property (nonatomic, strong)UIColor *beforeDayColor;
//之前天数背景色
@property (nonatomic, strong)UIColor *beforeDayBackColor;
//空白天数颜色
@property (nonatomic, strong)UIColor *emptyColor;

@end
