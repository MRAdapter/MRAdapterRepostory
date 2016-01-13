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
@end

@implementation ViewController
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
    
    //竖直滚动
    [ADPCollectionView collectionViewWithFrame:CGRectMake(20, 250, 250, 150)
                                    imageArray:self.imagesArray
                                     Direction:UICollectionViewScrollDirectionVertical
                                  timeInterval:2
                                          view:self.view];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
