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
@synthesize TextView = _TextView, NewNote = _NewNote, BACKGROUND_COLOR = backgroundColor, TEXT_COLOR = textColor, TitleBar = _TitleBar, TextOptionsView = _TextOptionsView, Header1 = _Header1;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _TitleBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 54)];
    UINavigationItem *barTitleItem = [[UINavigationItem alloc] initWithTitle:@"Notepad+"];
    _TitleBar.items = @[barTitleItem];
    _TitleBar.tintColor=[UIColor blueColor];
    
    _NewNote =[UIButton buttonWithType:UIButtonTypeSystem];
    [_NewNote setTitle:@"+" forState:UIControlStateNormal];
    [_NewNote sizeToFit];
    _NewNote.titleLabel.font = [UIFont systemFontOfSize:30];
    _NewNote.center = CGPointMake(200, 200);
    [_NewNote addTarget:self action:@selector(NewNoteButton:) forControlEvents:UIControlEventTouchUpInside];
    
    _Header1 = [UIButton buttonWithType:UIButtonTypeSystem];
    [_Header1 setTitle:@"H1" forState:UIControlStateNormal];
    [_Header1 sizeToFit];
    
    _TextOptionsView = [[UIView alloc] initWithFrame:CGRectMake(0, _TitleBar.frame.size.height, [[UIScreen mainScreen] bounds].size.width, 30)];
    [_TextOptionsView setBackgroundColor:[UIColor lightGrayColor]];
    
    
    [self.view addSubview:_TitleBar];
    [self.view addSubview:_NewNote];
    [self.view addSubview:_TextOptionsView];
    [_TextOptionsView addSubview: _Header1];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)NewNoteButton:(UIButton *)sender{
    
    [_NewNote removeFromSuperview];
    
    backgroundColor = [UIColor colorWithRed:.2
                                       green:.2
                                        blue:.2
                                       alpha:1];
    textColor = [UIColor colorWithRed:1
                                          green:1
                                           blue:1
                                          alpha:1];

    
    _TextView = [[UITextView alloc] initWithFrame:CGRectMake(0,
                                                             [UIApplication sharedApplication].statusBarFrame.size.height+ _TitleBar.frame.size.height + _TextOptionsView.frame.size.height,
                                                             [[UIScreen mainScreen] bounds].size.width,
                                                             [[UIScreen mainScreen] bounds].size.height)];
    [self.view setBackgroundColor:backgroundColor];
    [_TextView setBackgroundColor:backgroundColor];
    [_TextView setTextColor:textColor];
    _TextView.font = [UIFont fontWithName:@"Jaapokki-Regular" size:20];
    [self.view addSubview:_TextView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
