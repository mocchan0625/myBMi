//
//  bmiViewController.m
//  checkBMI
//
//  Created by mocchan on 2014/07/31.
//  Copyright (c) 2014年 mocchan.com. All rights reserved.
//

#import "bmiViewController.h"

@interface bmiViewController ()

@end

@implementation bmiViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    labelBmiTitle.hidden = YES;
    labelBmiValue.hidden = YES;
    labelBmiText.hidden = YES;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField*)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)calcBmi
{
    float height = [tfHeight.text floatValue] / 100;
    float weight = [tfWeight.text floatValue];
    
    float bmiValue = weight / (height*height);
    
    labelBmiValue.text = [[NSString alloc] initWithFormat:@"%.2f",bmiValue];
    
    if(bmiValue < 17.6){
        labelBmiText.text = @"痩せすぎなのでたくさん食べましょう！";
    }else if(bmiValue < 19.8){
        labelBmiText.text = @"痩せ気味なので注意しましょう！";
    }else if(bmiValue < 24.2){
        labelBmiText.text = @"標準的な体重なので大丈夫です。";
    }else if(bmiValue < 26.4){
        labelBmiText.text = @"太り気味です！運動＆食事制限をしましょう！";
    }else {
        labelBmiText.text = @"デブです。今すぐダイエットしましょう......";
    }
    
    labelBmiTitle.hidden = NO;
    labelBmiText.hidden = NO;
    labelBmiValue.hidden = NO;
}

@end
