//
//  TTGameControllerViewController.m
//  Tean_Tytans
//
//  Created by Derrick Ho on 8/18/13.
//  Copyright (c) 2013 Derrick Ho. All rights reserved.
//

#import "TTGameControllerViewController.h"

@interface TTGameControllerViewController ()

@end

@implementation TTGameControllerViewController

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
- (IBAction)arrowLeftPressed:(id)sender {
	DLog(@"Arrow left has been pressed");
}
- (IBAction)arrowLeftRelease:(id)sender {
	DLog(@"Arrow Left has been released");
}
- (IBAction)arrowRightPressed:(id)sender {
	DLog(@"arrow Right has been released")
}
- (IBAction)arrowRightRelease:(id)sender {
	DLog(@"arrow right has been released");
}
- (IBAction)actionAttackTapped:(id)sender {
	DLog(@"attack!");
}
- (IBAction)actionSpecialRotate:(id)sender {
	DLog(@"rotate and do something special");
}
- (IBAction)actionGrabPinch:(id)sender {
	DLog(@"pinch in");
}


@end
