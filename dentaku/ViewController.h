//
//  ViewController.h
//  dentaku
//
//  Created by 田中　明 on 13/01/10.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Calc2ViewController : UIViewController {
    IBOutlet UILabel *label;
    BOOL startInput;
}
-(IBAction)numberButtonPressed:(id)sender;
-(IBAction)clearButtonPressed:(id)sender;
@end