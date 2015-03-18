//
//  ViewController.h
//  TextEditor
//
//  Created by Henry O Mound on 3/17/15.
//  Copyright (c) 2015 Henry Mound. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

    IBOutlet UITextView *TextView;
    IBOutlet UIButton *NewNote;
    

}

@property (strong, nonatomic) IBOutlet UITextView *TextView;
@property (strong, nonatomic) IBOutlet UIButton *NewNote;

@property (strong, nonatomic) UIColor *BACKGROUND_COLOR;
@property (strong, nonatomic) UIColor *TEXT_COLOR;



@end

