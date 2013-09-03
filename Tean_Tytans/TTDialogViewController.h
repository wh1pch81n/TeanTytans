//
//  TTDialogViewController.h
//  Tean_Tytans
//
//  Created by Derrick Ho on 8/28/13.
//  Copyright (c) 2013 Derrick Ho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTDialogViewController : UIViewController {
	__weak IBOutlet UIImageView *_coverPhoto;
	__weak IBOutlet UITextView *_dialog;
}
- (void)addDialogWithImage:(UIImage *)image withText:(NSString *)text;
@end
