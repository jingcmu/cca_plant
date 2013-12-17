//
//  AboutUsView.m
//  universe proj 265d
//
//  Created by Kai Chu  on 8/30/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//
#import "AboutUsView.h"
#import "MainView.h"

@implementation AboutUsView

//Switches back to menu
-(IBAction)backToMain
{
	[mainView clearAboutUsView];
	[mainView goToInfo];	
}


@end