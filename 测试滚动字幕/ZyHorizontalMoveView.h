//
//  ZyHorizontalMoveView.h
//  测试滚动字幕
//
//  Created by zhangyong on 16/8/3.
//  Copyright © 2016年 zhangyong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZyHorizontalMoveView : UIView


- (instancetype)initWithFrame:(CGRect)frame withTitle:(NSString *)title;

/**
 *  开始
 */
- (void)start;

/**
 *  暂停
 */
- (void)stop;


@end
