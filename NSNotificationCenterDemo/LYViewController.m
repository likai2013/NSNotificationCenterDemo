//
//  LYViewController.m
//  NSNotificationCenterDemo
//
//  Created by xingyun on 13-12-3.
//  Copyright (c) 2013年 xingyun. All rights reserved.
//

#import "LYViewController.h"
#import "AppDelegate.h"

@interface LYViewController ()

@end

@implementation LYViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"第二个视图";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(20, 90, 200, 30)];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button setTitle:@"发送通知" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(changeViewBackgroundColor) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    

}

-(void)changeViewBackgroundColor
{
    [[NSNotificationCenter defaultCenter]postNotificationName:@"changeViewBackgroundColor" object:@"blackColor"];
    self.view.backgroundColor = [UIColor blackColor];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
