//
//  ViewController.h
//  dentaku
//
//  Created by 田中　明 on 13/01/10.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    __weak IBOutlet UILabel *label;
    BOOL startInput;
    float currentValue;
    int operation;
}

- (IBAction)push1:(id)sender;
- (IBAction)push2:(id)sender;
- (IBAction)push3:(id)sender;
- (IBAction)push4:(id)sender;
- (IBAction)push5:(id)sender;
- (IBAction)push6:(id)sender;
- (IBAction)push7:(id)sender;
- (IBAction)push8:(id)sender;
- (IBAction)push9:(id)sender;
- (IBAction)push10:(id)sender;

-(IBAction)clearButtonPressed:(id)sender;
-(IBAction)equalButtonPressed:(id)sender;
-(IBAction)opButtonPressed:(id)sender;
@end