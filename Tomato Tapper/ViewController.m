//
//  ViewController.m
//  Tomato Tapper
//
//  Created by Gargium on 9/5/14.
//  Copyright (c) 2014 Gargium Interactive. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void )imageTapped:(UITapGestureRecognizer *) gestureRecognizer
{
    NSLog(@"Touched");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect initialTomatoFrame = CGRectMake(CGRectGetMidX(self.view.frame)/20, CGRectGetMidY(self.view.frame), self.view.frame.size.width, self.view.frame.size.height/2);
    
    UIImage *tomato = [UIImage imageNamed:@"tomato.png"];
    UIImageView *myImageView = [[UIImageView alloc] initWithFrame:(initialTomatoFrame)];
    myImageView.image = tomato;
    [self.view insertSubview:myImageView atIndex:1];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
    myImageView.userInteractionEnabled = YES;
    [myImageView addGestureRecognizer:tap];
    //[tap release];
    
    
    
    [self gameDefaults];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL) prefersStatusBarHidden {
    return  YES;
}

-(void) gameDefaults {
    
    //  add background image to view
    UIImage *backgroundImage = [UIImage imageNamed:@"tomatotapperBlueBG.png"];
    UIImageView *backgroundImageView = [[UIImageView alloc] initWithFrame:self.view.frame];
    backgroundImageView.image = backgroundImage;
    [self.view insertSubview:backgroundImageView atIndex:0];
    
}
@end
