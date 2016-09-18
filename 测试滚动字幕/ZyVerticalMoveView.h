//
//  ZyVerticalMoveView.h
//  测试滚动字幕
//
//  Created by zhangyong on 16/8/4.
//  Copyright © 2016年 zhangyong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZyVerticalMoveView : UIView

@property (nonatomic , readonly) UIScrollView *scrollView;
/**
 *  初始化
 *
 *  @param frame             frame
 *  @param animationDuration 自动滚动的间隔时长。如果<=0，不自动滚动。
 *
 *  @return instance
 */
- (id)initWithFrame:(CGRect)frame animationDuration:(NSTimeInterval)animationDuration;

/**
 数据源：获取总的page个数
 **/
@property (nonatomic , copy) NSInteger (^totalPagesCount)(void);

/**
 数据源：获取第pageIndex个位置的contentView
 **/
@property (nonatomic , copy) UIView *(^fetchContentViewAtIndex)(NSInteger pageIndex);

/**
 当点击的时候，执行的block
 **/
@property (nonatomic , copy) void (^TapActionBlock)(NSInteger pageIndex);

@end



///////////////////////////在NSTimer上创建category类/////////////////////////////////

@interface NSTimer (Addition)

/**
 *  暂停
 */
- (void)pauseTimer;

/**
 *  开始  从现在时间
 */
- (void)resumeTimer;

/**
 *  开始
 *
 *  @param interval 间隔时间
 */
- (void)resumeTimerAfterTimeInterval:(NSTimeInterval)interval;


@end
