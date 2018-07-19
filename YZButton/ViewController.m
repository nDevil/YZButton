//
//  ViewController.m
//  YZButton
//
//  Created by 未魔 on 2018/5/7.
//  Copyright © 2018年 羽隹. All rights reserved.
//

#import "ViewController.h"
#import "YZTimerButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)timerButtonClicked:(YZTimerButton *)sender {
    sender.timingSeconds = 10;
    [sender startTiming];
}


@end
