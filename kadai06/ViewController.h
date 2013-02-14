//
//  ViewController.h
//  kadai06
//
//  Created by zheng xianzi on 2013/01/09.
//  Copyright (c) 2013年 zheng xianzi. All rights reserved.
//

#import <UIKit/UIKit.h>
NSMutableString *mstr;
NSString *fuhao;
double first,second;

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *textField;
- (IBAction)button8:(id)sender;
- (IBAction)button9:(id)sender;
- (IBAction)plus:(id)sender;
- (IBAction)button4:(id)sender;
- (IBAction)button5:(id)sender;
- (IBAction)button6:(id)sender;
- (IBAction)minus:(id)sender;
- (IBAction)button1:(id)sender;
- (IBAction)button2:(id)sender;
- (IBAction)button3:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)button0:(id)sender;
- (IBAction)dot:(id)sender;
- (IBAction)equal:(id)sender;
- (IBAction)division:(id)sender;
- (IBAction)buttonc:(id)sender;
- (IBAction)button7:(id)sender;


@end
