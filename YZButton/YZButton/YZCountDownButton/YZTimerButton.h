//
//  YZTimerButton.h
//  YZButton
//
//  Created by 未魔 on 2018/5/7.
//  Copyright © 2018年 羽隹. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol YZTimerButtonDelegate <NSObject>



@end

@interface YZTimerButton : UIButton

#pragma mark ------------- properties -------------
// 计时秒数
@property(nonatomic, assign) NSUInteger timingSeconds;

// 是否在计时结束之后重置计时器
@property(nonatomic, assign) BOOL isResetTimerAfterFinish;

// 开始计时
- (void)startTiming;
// 停止计时
- (void)stopTiming;

@end
