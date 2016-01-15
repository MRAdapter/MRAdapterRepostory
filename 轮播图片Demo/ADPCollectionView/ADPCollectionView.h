//
//  ADPCollectionView.h
//  轮播demo
//
//  Created by SimpleAdapter on 16/1/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ADPCollectionView : UICollectionView<UICollectionViewDelegate,UICollectionViewDataSource>
/**
 *  图片视图轮播效果
 *
 *  @param frame        轮播视图在父视图中的位置
 *  @param imageArray   图片数组
 *  @param direction    轮播方向，水平或者竖直
 *  @param timeInterval 轮播时间间隔
 *  @param view         轮播视图加载的父视图
 */
+(void)collectionViewWithFrame:(CGRect)frame imageArray:(NSArray *)imageArray Direction:(UICollectionViewScrollDirection)direction timeInterval:(CGFloat )timeInterval view:(UIView *)view;
/**
 *  自定义视图轮播效果
 *
 *  @param frame         轮播视图的位置，大小
 *  @param customViewArr 自定义视图的数组（需自己定义每个视图的Frame）
 *  @param direction     轮播方向
 *  @param timeInterval  轮播时间的间隔
 *  @param view          轮播视图的父视图
 *  @param show          是否显示小圆点
 */

+(void)collectionViewWithFrame:(CGRect)frame CustomVIewArray:(NSArray *) customViewArr Direction:(UICollectionViewScrollDirection)direction timeInterval:(CGFloat )timeInterval view:(UIView *)view showPage:(BOOL)show;
@end
