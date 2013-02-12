//
//  ViewController.m
//  dentaku
//
//  Created by 田中　明 on 13/01/10.
//  Copyright (c) 2013年 admin. All rights reserved.
//


#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    startInput = YES;
}

- (IBAction)push0:(id)sender {
    [self nanka:0];
}
- (IBAction)push1:(id)sender {
    [self nanka:1];
}

- (IBAction)push2:(id)sender {
    [self nanka:2];
}

- (IBAction)push3:(id)sender {
    [self nanka:3];
}

- (IBAction)push4:(id)sender {
    [self nanka:4];
}

- (IBAction)push5:(id)sender {
    [self nanka:5];
}

- (IBAction)push6:(id)sender {
    [self nanka:6];
}

- (IBAction)push7:(id)sender {
    [self nanka:7];
}

- (IBAction)push8:(id)sender {
    [self nanka:8];
}

- (IBAction)push9:(id)sender {
    [self nanka:9];
}
- (IBAction)push10:(id)sender {
    [self nanka:10];
}

- (void)nanka:(int)number{
    if ([_label.text isEqualToString:@"0"]) {
         _label.text = [NSString stringWithFormat:@"%d",number];
        startInput = NO;
        if(number == 10){
            _label.text = [NSString stringWithFormat:@"0."];
        }
    }else{
        if(number == 10){
         _label.text = [NSString stringWithFormat:@"%@.", _label.text];
    }else{
         _label.text = [NSString stringWithFormat:@"%@%d", _label.text, number];
    }
    }

}

// clearが押されるとoperation=0として初期化する

-(IBAction)clearButtonPressed:(id)sender
{
    currentValue = 0;
    _label.text = @"0";
    startInput = YES;
    operation = 0;
}

//　計算を行う。operation=0はclearボタンのこととしてほかの各演算子を小数点にも対応できるようにfloat型で呼び出す。

-(IBAction)equalButtonPressed:(id)sender
{
    if( operation == 0 ){
        return;
    } else if( operation == 1){
        currentValue += [_label.text floatValue];
    } else if( operation == 2 ){
        currentValue -= [_label.text floatValue];
    } else if( operation == 3 ){
        currentValue *= [_label.text floatValue];
    } else {
        currentValue /= [_label.text floatValue];
    }
    
     _label.text = [NSString stringWithFormat:@"%g",currentValue];
    startInput = YES;
}


-(IBAction)opButtonPressed:(id)sender
{
    UIButton *b = (UIButton *)sender;
    currentValue = [_label.text floatValue];
    operation = b.tag;
    startInput = YES;
}

@end
