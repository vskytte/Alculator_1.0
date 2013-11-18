//
//  ViewController.m
//  Alcolator
//
//  Created by Victor Skytte on 10/10/13.
//  Copyright (c) 2013 Victor Skytte. All rights reserved.
//

#import "ViewController.h"

#define MY_BANNER_UNIT_ID @"a152652615a891d"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Create a view of the standard size at the top of the screen.
    // Available AdSize constants are explained in GADAdSize.h.
    bannerView_ = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner];
    
    // Specify the ad unit ID.
    bannerView_.adUnitID = MY_BANNER_UNIT_ID;
    
    // Let the runtime know which UIViewController to restore after taking
    // the user wherever the ad goes and add it to the view hierarchy.
    bannerView_.rootViewController = self;
    [self.view addSubview:bannerView_];
    
    // Initiate a generic request to load it with an ad.
    [bannerView_ loadRequest:[GADRequest request]];
    
    [bannerView_ setFrame:CGRectMake(0,
                                     20,
                                     bannerView_.bounds.size.width,
                                     bannerView_.bounds.size.height)];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)calculate {
    
    float a = ([textfield1.text floatValue]);
    float b = ([textfield2.text floatValue]);
    float c = ([textfield3.text floatValue]);
    float d = (1000/b*a);
    float e = (c/100*b);
    float f = (a/c);
    float g = (e/a);
    
    label1.text = [[NSString alloc] initWithFormat:@"%2.2f ,-", d];
    label2.text = [[NSString alloc] initWithFormat:@"%2.2f ml", e];
    label3.text = [[NSString alloc] initWithFormat:@"%2.2f ,-", f];
    label4.text = [[NSString alloc] initWithFormat:@"%2.2f ,-", g];
}

-(IBAction)clear {
    
    textfield1.text = @"";
    textfield2.text = @"";
    textfield3.text = @"";
    label1.text = @"";
    label2.text = @"";
    label3.text = @"";
    label4.text = @"";
    
}

-(IBAction)backgroundTouched:(id)sender
{
    [textfield1 resignFirstResponder];
    [textfield2 resignFirstResponder];
    [textfield3 resignFirstResponder];
}


@end
