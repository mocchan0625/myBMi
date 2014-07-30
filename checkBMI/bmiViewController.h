//
//  bmiViewController.h
//  checkBMI
//
//  Created by mocchan on 2014/07/31.
//  Copyright (c) 2014年 mocchan.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface bmiViewController : UIViewController {
    
    IBOutlet UITextField *tfHeight;
    IBOutlet UITextField *tfWeight;
    IBOutlet UIButton *btnCalc;
    IBOutlet UILabel *labelBmiTitle;
    IBOutlet UILabel *labelBmiValue;
    IBOutlet UILabel *labelBmiText;
}

@end
