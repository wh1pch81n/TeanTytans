//
//  TTGameControllerViewController.h
//  Tean_Tytans
//
//  Created by Derrick Ho on 8/18/13.
//  Copyright (c) 2013 Derrick Ho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TTGameControllerDelegate.h"
@interface TTGameControllerViewController : UIViewController <UIGestureRecognizerDelegate>
@property (weak, nonatomic) id delegate;
+ (TTGameControllerViewController *)gameControllerCreate;
- (void) displayDialogWithImage:(UIImage *)image withDialog:(NSString *)text;
@end
