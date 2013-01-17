//
//  ViewController.m
//  dentaku
//
//  Created by 田中　明 on 13/01/10.
//  Copyright (c) 2013年 admin. All rights reserved.
//


#import "ViewController.h"

@interface UIViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    startInput = YES;
}
-(IBAction)numberButtonPressed:(id)sender
{
    UIButton *b = (UIButton *)sender;
    
    if( startImput ){
        if( b.tag == 0) return;
        label.text = [NSString stringWithFormat:@"%d",b.tag];
        startInput = NO;
    } else {
        label.text = [NSString stringWithFormat:@"%@%d", label.text, b.tag];
    }
}

-(IBAction)clearButtonPressed:(id)sender
{
    label.text = @"0";
    startInput = YES;
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
