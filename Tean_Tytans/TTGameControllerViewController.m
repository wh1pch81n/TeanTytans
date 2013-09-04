//
//  TTGameControllerViewController.m
//  Tean_Tytans
//
//  Created by Derrick Ho on 8/18/13.
//  Copyright (c) 2013 Derrick Ho. All rights reserved.
//

#import "TTGameControllerViewController.h"
#import "TTDialogViewController.h"
#define kLeftButton @"LeftButton"
#define kRightButton @"RightButton"
#define kPressed [NSNumber numberWithBool:YES]
#define kReleased [NSNumber numberWithBool:NO]

@interface TTGameControllerViewController ()
@property (strong, nonatomic) TTDialogViewController *dialogViewController;
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
}
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
	return YES;
}
#pragma mark - button IBactions
- (IBAction)arrowLeftPressed:(id)sender {
	if ([[self delegate] respondsToSelector:@selector(gameControllerWillPressLeftButton)])
		[[self delegate] gameControllerWillPressLeftButton];
	if ([[self delegate] respondsToSelector:@selector(leftButtonHasBeenPressed)])
		[[self delegate] leftButtonHasBeenPressed];
	if ([[self delegate] respondsToSelector:@selector(gameControllerDidPressLeftButton)])
		[[self delegate] gameControllerDidPressLeftButton];
}
- (IBAction)arrowLeftRelease:(id)sender {
	if ([[self delegate] respondsToSelector:@selector(gameControllerWillReleaseLeftButton)])
		[[self delegate] gameControllerWillReleaseLeftButton];
	if ([[self delegate] respondsToSelector:@selector(leftButtonHasBeenReleased)])
		[[self delegate] leftButtonHasBeenReleased];
	if ([[self delegate] respondsToSelector:@selector(gameControllerDidReleaseLeftButton)])
		[[self delegate] gameControllerDidReleaseLeftButton];
}
- (IBAction)arrowRightPressed:(id)sender {
	if ([[self delegate] respondsToSelector:@selector(gameControllerWillPressRightButton)])
		[[self delegate] gameControllerWillPressRightButton];
	if ([[self delegate] respondsToSelector:@selector(rightButtonHasBeenPressed)])
		[[self delegate] rightButtonHasBeenPressed];
	if ([[self delegate] respondsToSelector:@selector(gameControllerDidPressRightButton)])
		[[self delegate] gameControllerDidPressRightButton];
}
- (IBAction)arrowRightRelease:(id)sender {
	if ([[self delegate] respondsToSelector:@selector(gameControllerWillReleaseRightButton)])
		[[self delegate] gameControllerWillReleaseRightButton];
	if ([[self delegate] respondsToSelector:@selector(rightButtonHasBeenReleased)])
		[[self delegate] rightButtonHasBeenReleased];
	if ([[self delegate] respondsToSelector:@selector(gameControllerDidReleaseRightButton)])
		[[self delegate] gameControllerDidReleaseRightButton];
}
- (IBAction)actionAttackTapped:(id)sender {
	if ([[self delegate] respondsToSelector:@selector(gameControllerWillTapAction)])
		[[self delegate] gameControllerWillTapAction];
	if ([[self delegate] respondsToSelector:@selector(actionButtonHasBeenTapped)])
		[[self delegate] actionButtonHasBeenTapped];
	if ([[self delegate] respondsToSelector:@selector(gameControllerDidTapAction)])
		[[self delegate] gameControllerDidTapAction];
}
- (IBAction)actionSwipe:(UISwipeGestureRecognizer *)sender {
	if ([[self delegate] respondsToSelector:@selector(gameControllerWillSwipeAction)])
		[[self delegate] gameControllerWillSwipeAction];
	if ([[self delegate] respondsToSelector:@selector(actionButtonHasBeenSwiped:)])
		[[self delegate] actionButtonHasBeenSwiped:sender];
	if ([[self delegate] respondsToSelector:@selector(gameControllerDidSwipeAction)])
		[[self delegate] gameControllerDidSwipeAction];
}

- (IBAction)actionSpecialRotate:(UIRotationGestureRecognizer *)rotationRecognizer {
	if ([[self delegate] respondsToSelector:@selector(gameControllerWillRotateAction)])
		[[self delegate] gameControllerWillRotateAction];
	if ([[self delegate] respondsToSelector:@selector(actionButtonHasBeenRotated:)])
		[[self delegate] actionButtonHasBeenRotated:rotationRecognizer];
	if ([[self delegate] respondsToSelector:@selector(gameControllerDidRotateAction)])
		[[self delegate] gameControllerDidRotateAction];
}
- (IBAction)actionGrabPinch:(UIPinchGestureRecognizer *)pinchRecognizer {
	if ([[self delegate] respondsToSelector:@selector(gameControllerWillPinchAction)])
		[[self delegate] gameControllerWillPinchAction];
	if ([[self delegate] respondsToSelector:@selector(actionButtonHasBeenPinched:)])
		[[self delegate] actionButtonHasBeenPinched:pinchRecognizer];
	if ([[self delegate] respondsToSelector:@selector(gameControllerDidPinchAction)])
		[[self delegate] gameControllerDidPinchAction];
}

#pragma mark - messaging/dialog
- (void)displayDialogWithImage:(UIImage *)image withDialog:(NSString *)text {
	if ([self dialogViewController] == nil) {
		[self setupDialogViewController];
	}
	[[self dialogViewController] addDialogWithImage:image withText:text];
}
- (void)setupDialogViewController {
	for (UIViewController *vc in [self childViewControllers]) {
		if ([vc isKindOfClass:[TTDialogViewController class]]) {
			[self setDialogViewController:(TTDialogViewController *)vc];
		}
	}
}
@end
