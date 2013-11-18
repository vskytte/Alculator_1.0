//
//  ViewController.h
//  Alcolator
//
//  Created by Victor Skytte on 10/10/13.
//  Copyright (c) 2013 Victor Skytte. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADBannerView.h"


@interface ViewController : UIViewController {
    IBOutlet UITextField *textfield1;
    IBOutlet UITextField *textfield2;
    IBOutlet UITextField *textfield3;
    IBOutlet UILabel *label1;
    IBOutlet UILabel *label2;
    IBOutlet UILabel *label3;
    IBOutlet UILabel *label4;
    GADBannerView *bannerView_;

}

-(IBAction)calculate;
-(IBAction)clear;
-(IBAction)backgroundTouched:(id)sender;

@end
