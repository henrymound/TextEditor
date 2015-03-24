//
//  Settings.h
//  TextEditor
//
//  Created by Henry Mound on 3/24/15.
//  Copyright (c) 2015 Henry Mound. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Settings : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>{


}

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) NSArray *pickerData;

@end
