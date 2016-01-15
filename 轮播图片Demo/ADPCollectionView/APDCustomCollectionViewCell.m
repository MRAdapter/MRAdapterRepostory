//
//  APDCustomCollectionViewCell.m
//  轮播图片Demo
//
//  Created by apple on 16/1/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "APDCustomCollectionViewCell.h"

@implementation APDCustomCollectionViewCell

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    
}
-(void)setCustomView:(UIView *)customView{
    _customView=customView;

    //将自定义的视图添加到cell.contentView上
    [self.contentView addSubview:_customView];
    
}
@end
