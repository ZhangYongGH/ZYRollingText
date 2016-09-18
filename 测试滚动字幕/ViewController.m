//
//  ViewController.m
//  测试滚动字幕
//
//  Created by zhangyong on 16/8/3.
//  Copyright © 2016年 zhangyong. All rights reserved.
//

#import "ViewController.h"
#import "ZyHorizontalMoveView.h"
#import "ZyVerticalMoveView.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self horizontalScroll];
    
    [self verticalScroll];
    
}

//水平滚动
- (void)horizontalScroll{
    
    ZyHorizontalMoveView *view = [[ZyHorizontalMoveView alloc] initWithFrame:CGRectMake(20, 100, 200, 20) withTitle:@"全场卖两块，买啥都两块，两块钱，你买不了吃亏，两块钱，你买不了上当，真正的物有所值。拿啥啥便宜 买啥啥不贵"];
    
    view.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:view];
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(touchClick)];
    
    view.userInteractionEnabled = YES;
    
    [view addGestureRecognizer:tap];
    
}

- (void)touchClick{
    
    NSLog(@"点击了广告");
    
}


//垂直滚动
- (void)verticalScroll{
    
    NSMutableArray *viewsArray = [NSMutableArray array];
    NSArray *arr = @[@"111111111111111111111",@"22222222222222222",@"3333333333333333"];
    for (int i = 0; i < arr.count; ++i) {
        for (NSString *s in arr) {
            
            UILabel *tempLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 200, 20)];
            tempLabel.text =  [NSString stringWithFormat:@"%@",s];
            [viewsArray addObject:tempLabel];
        }
        
    }
    
    
    ZyVerticalMoveView *view = [[ZyVerticalMoveView alloc] initWithFrame:CGRectMake(20, 200, 200, 20) animationDuration:2.5];
    view.backgroundColor = [UIColor redColor];
    view.userInteractionEnabled = YES;
    
    view.fetchContentViewAtIndex = ^UIView *(NSInteger pageIndex){
        return viewsArray[pageIndex];
    };
    view.totalPagesCount = ^NSInteger(void){
        return arr.count;
    };
    
    [view setTapActionBlock:^(NSInteger index) {
        NSLog(@"点击了第%ld个广告", (long)index);
        
    }];
    
    [self.view addSubview:view];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
