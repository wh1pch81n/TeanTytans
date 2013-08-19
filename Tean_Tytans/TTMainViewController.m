//
//  TTMainViewController.m
//  Tean_Tytans
//
//  Created by Derrick Ho on 8/18/13.
//  Copyright (c) 2013 Derrick Ho. All rights reserved.
//

#import "TTMainViewController.h"
#import "TTGameControllerViewController.h"

@interface TTMainViewController ()
@property (strong, nonatomic) TTGameControllerViewController *gameController;
@end

@implementation TTMainViewController

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
	[self setGameController:[TTGameControllerViewController gameControllerCreate]];
	
}
- (void)viewDidAppear:(BOOL)animated {
	[self presentViewController:[self gameController]
					   animated:YES
					 completion:nil];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
