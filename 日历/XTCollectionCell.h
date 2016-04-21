//
//  XTCollectionCell.h
//  日历
//
//  Created by 叶慧伟 on 16/4/19.
//  Copyright © 2016年 叶慧伟. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalendarModel.h"

@interface XTCollectionCell : UICollectionViewCell

@property (nonatomic, strong)UILabel *titleLabel;

@property (nonatomic, strong)CalendarModel *calendar;

@end
