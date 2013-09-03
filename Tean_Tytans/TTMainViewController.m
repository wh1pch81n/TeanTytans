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
	[[self gameController] displayDialogWithImage:nil withDialog:@"roger wilco"];
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
	static float lastAngle = 0;
	int ax = (angle - lastAngle > 0)? 1:(angle - lastAngle < 0)? -1:0;
	float angleAmount = M_PI/180;
	CGAffineTransform currTrans = [[self image] transform];
	CGAffineTransform newTrans = CGAffineTransformRotate(currTrans,  (angleAmount *ax));
	
	[[self image] setTransform:newTrans];
	printf("angle(%f) , a%f, b%f, c%f, d%f, tx%f, ty%f\n", angle,
		   self.image.transform.a,
		   self.image.transform.b,
		   self.image.transform.c,
		   self.image.transform.d,
		   self.image.transform.tx,
		   self.image.transform.ty);
	lastAngle = angle;
}
- (void)actionButtonHasBeenPinched:(UIPinchGestureRecognizer *)pinchRecognizer {
	float scale = [pinchRecognizer scale];
	static float lastScale = 1.0;
	int sx = (scale - lastScale > 0)? 1:(scale - lastScale < 0)? -1:0;
	float scaleAmount = 0.05;
	CGAffineTransform currTrans = [[self image] transform];
//	CGAffineTransform newTrans = CGAffineTransformScale(currTrans, (scaleAmount*sx), (scaleAmount*sx));
	CGAffineTransform newTrans = CGAffineTransformMake(currTrans.a + (scaleAmount*sx),
													   currTrans.b,
													   currTrans.c,
													   currTrans.d + (scaleAmount*sx),
													   currTrans.tx,
													   currTrans.ty);
	[[self image] setTransform:newTrans];
	
	DLog(@"scale(%f) Lscale(%f), sx(%d) , a%f, b%f, c%f, d%f, tx%f, ty%f\n", scale, lastScale, sx,
		   self.image.transform.a,
		   self.image.transform.b,
		   self.image.transform.c,
		   self.image.transform.d,
		   self.image.transform.tx,
		   self.image.transform.ty);
	lastScale = scale;
}
- (void)leftButtonHasBeenPressed {
	[[self gameController] displayDialogWithImage:nil withDialog:@"cow"];
}
- (void)leftButtonHasBeenReleased {
	[[self gameController] displayDialogWithImage:nil withDialog:@"pig"];	
}
- (void)rightButtonHasBeenPressed {
	
}
- (void)rightButtonHasBeenReleased {
	
}
@end
