//
//  Settings.m
//  TextEditor
//
//  Created by Henry Mound on 3/24/15.
//  Copyright (c) 2015 Henry Mound. All rights reserved.
//

#import "Settings.h"
#import "ViewController.h"

@interface UIViewController ()
{
    
}
@end

@implementation Settings
@synthesize pickerData = _pickerData;
extern int ThemeNumber;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Initialize Data
    _pickerData = @[@"Cerulean", @"Paper", @"Superhero", @"Readable", @"Darkly", @"Cyborg"];

    
    // Connect data
    self.picker.dataSource = self;
    self.picker.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// The number of columns of data
- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return (int)1;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSString *YourselectedTitle = [self.pickerData objectAtIndex:[self.picker selectedRowInComponent:0]];
    NSLog(@"%@", YourselectedTitle);
    
    if ([YourselectedTitle isEqualToString: @"Cerulean"])
        ThemeNumber = 1;
    else if ([YourselectedTitle isEqualToString: @"Paper"])
        ThemeNumber = 2;
    else if ([YourselectedTitle isEqualToString: @"Superhero"])
        ThemeNumber = 3;
    else if ([YourselectedTitle isEqualToString: @"Readable"])
        ThemeNumber = 4;
    else if ([YourselectedTitle isEqualToString: @"Darkly"])
        ThemeNumber = 5;
    else if ([YourselectedTitle isEqualToString: @"Cyborg"])
        ThemeNumber = 6;
    
    NSLog(@"%i", ThemeNumber);
    
    
}

// The number of rows of data
- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return (int)_pickerData.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _pickerData[row];
}

@end
