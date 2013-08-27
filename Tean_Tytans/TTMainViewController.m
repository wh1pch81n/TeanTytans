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
}
- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	[self setGameController:[TTGameControllerViewController gameControllerCreate]];
	[[self view] addSubview:[[self gameController] view]];
	[[self gameController] setDelegate:self];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dismissGameController {
	for (UIView *layer in [[self view] subviews]) {
		if (layer == [[self gameController] view]) {
			[layer removeFromSuperview];
		}
	}
	[self setGameController:nil];
}
- (void)actionButtonHasBeenTapped {
	[[self image] setHidden:![[self image] isHidden]];
}
- (void)actionButtonHasBeenRotated:(UIRotationGestureRecognizer *)rotationRecognizer {
	float angle = [rotationRecognizer rotation];
	[[self image] setTransform:CGAffineTransformMakeRotation(angle)];
	printf("angle(%f)\n", angle);
}
- (void)actionButtonHasBeenPinched:(UIPinchGestureRecognizer *)pinchRecognizer {
	float scale = [pinchRecognizer scale];
	[[self image] setTransform:CGAffineTransformMakeScale(scale, scale)];
	printf("scale(%f)\n", scale);
}
- (void)leftButtonHasBeenPressed {
	
}
- (void)leftButtonHasBeenReleased {
	
}
- (void)rightButtonHasBeenPressed {
	
}
- (void)rightButtonHasBeenReleased {
	
}
@end
