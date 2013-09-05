//
//  TTDialogViewController.m
//  Tean_Tytans
//
//  Created by Derrick Ho on 8/28/13.
//  Copyright (c) 2013 Derrick Ho. All rights reserved.
//

#import "TTDialogViewController.h"

@interface TTDialogViewController ()

@end

@implementation TTDialogViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addDialogWithImage:(UIImage *)image withText:(NSString *)text {
	[_dialog setText:text];
}

- (IBAction)tappedDialogView:(id)sender {
	[_coverPhoto setHidden:![_coverPhoto isHidden]];
	DLog(@"tapped dialog view");
}

@end
