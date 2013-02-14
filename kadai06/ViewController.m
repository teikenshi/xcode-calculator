//
//  ViewController.m
//  kadai06
//
//  Created by zheng xianzi on 2013/01/09.
//  Copyright (c) 2013年 zheng xianzi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    mstr=[[NSMutableString alloc]init];
    fuhao=[[NSString alloc]init];
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)button8:(id)sender {
    [mstr appendString:@"8"];
    textField.text=mstr;
}

- (IBAction)button9:(id)sender {
    [mstr appendString:@"9"];
    textField.text=mstr;
}

- (IBAction)plus:(id)sender {
    NSString *mstr1=textField.text;
    first=[mstr1 doubleValue];
    [mstr setString:@""];
    fuhao=@"+";
}

- (IBAction)button4:(id)sender {
    [mstr appendString:@"4"];
    textField.text=mstr;
}

- (IBAction)button5:(id)sender {
    [mstr appendString:@"5"];
    textField.text=mstr;
}

- (IBAction)button6:(id)sender {
    [mstr appendString:@"6"];
    textField.text=mstr;
}

- (IBAction)minus:(id)sender {
    NSString *mstr1=textField.text;
    first=[mstr1 doubleValue];
    [mstr setString:@""];
    fuhao=@"-";

}

- (IBAction)button1:(id)sender {
    [mstr appendString:@"1"];
    textField.text=mstr;
}

- (IBAction)button2:(id)sender {
    [mstr appendString:@"2"];
    textField.text=mstr;
}

- (IBAction)button3:(id)sender {
    [mstr appendString:@"3"];
    textField.text=mstr;
}

- (IBAction)multiply:(id)sender {
    NSString *mstr1=textField.text;
    first=[mstr1 doubleValue];
    [mstr setString:@""];
    fuhao=@"×";
}

- (IBAction)button0:(id)sender {
    [mstr appendString:@"0"];
    textField.text=mstr;
}

- (IBAction)dot:(id)sender {
    [mstr appendString:@"."];
    textField.text=mstr;
}

- (IBAction)division:(id)sender {
    NSString *mstr1=textField.text;
    first=[mstr1 doubleValue];
    [mstr setString:@""];
    fuhao=@"÷";
}

- (IBAction)buttonc:(id)sender {
    [mstr setString:@""];
    textField.text=@"0";
}

- (IBAction)button7:(id)sender {
    [mstr appendString:@"7"];
    textField.text=mstr;
}


- (IBAction)equal:(id)sender {
    NSString *mstr2=mstr;
    second=[mstr2 doubleValue];
    if(fuhao==@"+"){
        NSString *kotae=[NSString stringWithFormat:@"%g",second+first];
        textField.text=kotae;
        first+=second;
    }else if(fuhao==@"-"){
        NSString *kotae=[NSString stringWithFormat:@"%g",first-second];
        textField.text=kotae;
        first-=second;
    }else if (fuhao==@"×"){
        NSString *kotae=[NSString stringWithFormat:@"%g",second*first];
        textField.text=kotae;
        first*=second;
    }else if (fuhao==@"÷"){
        NSString *kotae=[NSString stringWithFormat:@"%g",first/second];
        textField.text=kotae;
       first/=second;
}
}
@end
