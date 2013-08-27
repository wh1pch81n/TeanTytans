//
//  TTMainViewController.h
//  Tean_Tytans
//
//  Created by Derrick Ho on 8/18/13.
//  Copyright (c) 2013 Derrick Ho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TTGameControllerDelegate.h"

@interface TTMainViewController : UIViewController <TTGameControllerDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *image;

@end
