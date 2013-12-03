//
//  MyButton.m
//  NSNotificationCenterDemo
//
//  Created by xingyun on 13-12-3.
//  Copyright (c) 2013年 xingyun. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setTitle:@"跳转到第二个界面" forState:UIControlStateNormal];
        [self setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    }
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
