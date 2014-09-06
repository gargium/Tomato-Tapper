//
//  ViewController.h
//  Tomato Tapper
//
//  Created by Gargium on 9/5/14.
//  Copyright (c) 2014 Gargium Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(BOOL) prefersStatusBarHidden;
-(void) gameDefaults;
-(void)imageTapped:(UITapGestureRecognizer *) gestureRecognizer;

@end
