//
//  YZTimerButton.m
//  YZButton
//
//  Created by 未魔 on 2018/5/7.
//  Copyright © 2018年 羽隹. All rights reserved.
//

#import "YZTimerButton.h"

@interface YZTimerButton ()

@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) NSDate *startCountDate;
@property (nonatomic, strong) NSDateFormatter *dateFormatter;

// 当前时间
@property (nonatomic, assign) NSTimeInterval currentTimeInterval;


@end

@implementation YZTimerButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)startTiming {
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer:) userInfo:nil repeats:NO];
    
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}

- (void)stopTiming {
    
}

#pragma mark ------------- Custom -------------
- (void)updateTimer:(NSTimer *)startTimer {
    NSTimeInterval timeDiff = [[NSDate date] timeIntervalSinceDate:self.startCountDate];

    [self setTitle:[NSString stringWithFormat:@"%.0f", timeDiff] forState:UIControlStateNormal];
    

}
@end
