//
//  InfoView.m
//  universe proj 265d
//
//  Created by Kai Chu  on 8/30/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//
#import "InfoView.h"
#import "MainView.h"
#import <QuartzCore/QuartzCore.h>

@implementation InfoView
@synthesize backgroundImage;
//Tells mainView to clear InfoView and switch to AboutUsView.
-(IBAction)goToAboutUs
{
	[mainView clearInfoView];
	[mainView goToAboutUs];
}

//Tells mainView to clear InfoView and switch to LessonView.
-(IBAction)goToLesson
{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:0.3];
	backgroundImage.alpha = 0.5;
	[mainView goToLesson];
	[UIView setAnimationDelegate:self];
	[UIView setAnimationDidStopSelector:@selector(animationDidStop:finished:context:)];
	[UIView commitAnimations];
	
}

@end