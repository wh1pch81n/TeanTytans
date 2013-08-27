//
//  TTGameControllerDelegate.h
//  Tean_Tytans
//
//  Created by Derrick Ho on 8/26/13.
//  Copyright (c) 2013 Derrick Ho. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TTGameControllerDelegate <NSObject>
@required
- (void)dismissGameController;
- (void)actionButtonHasBeenTapped;
- (void)actionButtonHasBeenRotated;
- (void)actionButtonHasBeenPinched;
@optional
- (void)gameControllerWillTapAction;
- (void)gameControllerDidTapAction;
- (void)gameControllerWillRotateAction;
- (void)gameControllerDidRotateAction;
- (void)gameControllerWillPinchAction;
- (void)gameControllerDidPinchAction;
- (void)gameControllerWillPressLeftButton;
- (void)gameControllerDidPressLeftButton;
- (void)gameControllerWillReleaseLeftButton;
- (void)gameControllerDidReleaseLeftButton;
- (void)gameControllerWillPressRightButton;
- (void)gameControllerDidPressRightButton;
- (void)gameControllerWillReleaseRightButton;
- (void)gameControllerDidReleaseRightButton;
@end
