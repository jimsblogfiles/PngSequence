//
//  ViewController.m
//  PngSequence
//
//  Created by James Border on 4/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

#pragma mark - View lifecycle

- (void)viewDidLoad {

    [super viewDidLoad];

	NSMutableArray *imageArray = [[NSMutableArray alloc]init];
	
	for (int i = 1; i <= 10; i++) {
		[imageArray addObject:[UIImage imageNamed:[NSString stringWithFormat:@"s%02i.png", i]]];
	}
	
	UIImageView *pngAnimation = [[UIImageView alloc] initWithFrame: CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
	[pngAnimation setAnimationImages:imageArray];
	[pngAnimation setAnimationDuration:5];
	[pngAnimation setAnimationRepeatCount:3];
	[pngAnimation setContentMode:UIViewContentModeCenter];

	[self.view addSubview:pngAnimation];	

	[pngAnimation startAnimating];

	pngAnimation.autoresizingMask = (UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin);

}

- (void)viewDidUnload {

    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
