//
//  TTGameControllerViewController.m
//  Tean_Tytans
//
//  Created by Derrick Ho on 8/18/13.
//  Copyright (c) 2013 Derrick Ho. All rights reserved.
//

#import "TTGameControllerViewController.h"
#define kLeftButton @"LeftButton"
#define kRightButton @"RightButton"
#define kPressed [NSNumber numberWithBool:YES]
#define kReleased [NSNumber numberWithBool:NO]

@interface TTGameControllerViewController ()

@end

@implementation TTGameControllerViewController
+ (TTGameControllerViewController *)gameControllerCreate {
	UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"GameControllerStoryboard"
														 bundle:nil];
	return [storyboard instantiateViewControllerWithIdentifier:@"GameControllerID"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	buttonStateDict = [NSMutableDictionary new];
}

#pragma mark - button IBactions
- (IBAction)arrowLeftPressed:(id)sender {
	#warning You must ask the delegate if it responds to the method call or else it will crash.
	[[self delegate] gameControllerWillPressLeftButton];
	DLog(@"Arrow left has been pressed");
	[buttonStateDict setObject:kPressed forKey:kLeftButton];
	[[self delegate] gameControllerDidPressLeftButton];
}
- (IBAction)arrowLeftRelease:(id)sender {
	[[self delegate] gameControllerWillReleaseLeftButton];
	DLog(@"Arrow Left has been released");
	[buttonStateDict setObject:kReleased forKey:kLeftButton];
	[[self delegate] gameControllerDidReleaseLeftButton];
}
- (IBAction)arrowRightPressed:(id)sender {
	[[self delegate] gameControllerWillPressRightButton];
	DLog(@"arrow Right has been pressed")
	[buttonStateDict setObject:kPressed forKey:kRightButton];
	[[self delegate] gameControllerDidPressRightButton];
}
- (IBAction)arrowRightRelease:(id)sender {
	[[self delegate] gameControllerWillReleaseRightButton];
	DLog(@"arrow right has been released");
	[buttonStateDict setObject:kReleased forKey:kRightButton];
	[[self delegate] gameControllerDidReleaseRightButton];
}
- (IBAction)actionAttackTapped:(id)sender {
	[[self delegate] gameControllerWillTapAction];
	DLog(@"attack!");
	[[self delegate] actionButtonHasBeenTapped];
	[[self delegate] gameControllerDidTapAction];
}

- (IBAction)actionSpecialRotate:(id)sender {
	[[self delegate] gameControllerWillRotateAction];
	DLog(@"rotate and do something special");
	[[self delegate] actionButtonHasBeenRotated];
	[[self delegate] gameControllerDidRotateAction];
}
- (IBAction)actionGrabPinch:(id)sender {
	[[self delegate] gameControllerWillPinchAction];
	DLog(@"pinch in");
	[[self delegate] actionButtonHasBeenPinched];
	[[self delegate] gameControllerDidPinchAction];
}


@end
