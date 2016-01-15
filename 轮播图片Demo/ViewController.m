//
//  ViewController.m
//  轮播图片Demo
//
//  Created by apple on 16/1/13.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "ADPCollectionView.h"
@interface ViewController ()
@property(nonatomic,strong)NSMutableArray* imagesArray;
@property(nonatomic,strong)NSMutableArray* customViewArray;
@end

@implementation ViewController

-(NSMutableArray *)customViewArray{
    if (!_customViewArray) {
        _customViewArray  = [NSMutableArray array];
        for (int i = 1 ; i < 6 ; i++) {
            UILabel* lable=[UILabel new];
            lable.backgroundColor=[UIColor redColor];
            lable.frame=CGRectMake(100, 50, 100, 20);
            lable.text=[NSString stringWithFormat:@"视图%d",i];
            [_customViewArray addObject:lable];
        }
    }
    return _customViewArray;
}

-(NSArray *)imagesArray{
    if (!_imagesArray) {
        _imagesArray  = [NSMutableArray array];
        for (int i = 1 ; i < 5 ; i++) {
            
            NSString * imageName = [NSString stringWithFormat:@"s%d.jpg",i];
            
            UIImage * image = [UIImage imageNamed:imageName];
            
            [_imagesArray addObject:image];
        }
    }
    return _imagesArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //水平滚动
    [ADPCollectionView collectionViewWithFrame:CGRectMake(20, 50, 250, 150)
                                    imageArray:self.imagesArray
                                     Direction:UICollectionViewScrollDirectionHorizontal
                                  timeInterval:2
                                          view:self.view];
    
    //自定义视图竖直滚动
    [ADPCollectionView collectionViewWithFrame:CGRectMake(20, 250, 250, 150) CustomVIewArray:self.customViewArray Direction:UICollectionViewScrollDirectionVertical timeInterval:1.3 view:self.view showPage:NO];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
