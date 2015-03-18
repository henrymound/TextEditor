//
//  ViewController.m
//  TextEditor
//
//  Created by Henry O Mound on 3/17/15.
//  Copyright (c) 2015 Henry Mound. All rights reserved.
//

/*
 Available Fonts
 Jaapokki
 Jaapokki-Regular
 MANIFESTO
 MANIFESTO
 */

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize TextView = _TextView;

- (void)viewDidLoad {
    [super viewDidLoad];
    UIColor *BACKGROUND_COLOR = [UIColor whiteColor];
    UIColor *TEXT_COLOR = [UIColor colorWithRed:0
                                          green:0
                                           blue:.5
                                          alpha:1];
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:NO];
    _TextView = [[UITextView alloc] initWithFrame:CGRectMake(0,
                                                             [UIApplication sharedApplication].statusBarFrame.size.height,
                                                             [[UIScreen mainScreen] bounds].size.width,
                                                             [[UIScreen mainScreen] bounds].size.height)];
    [self.view setBackgroundColor:BACKGROUND_COLOR];
    [_TextView setBackgroundColor:BACKGROUND_COLOR];
    [_TextView setTextColor:TEXT_COLOR];
    _TextView.font = [UIFont fontWithName:@"Jaapokki-Regular" size:20];
    [self.view addSubview:_TextView];
    

    


    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
