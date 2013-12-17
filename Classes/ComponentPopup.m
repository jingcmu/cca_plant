//
//  ComponentPopup.m
//  UniverseKingdom
//
//  Created by Kai Chu  on 3/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ComponentPopup.h"


@implementation ComponentPopup

@synthesize component_image1;
@synthesize component_image2;
@synthesize component_final_image;

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
    }
    return self;
}


- (void)dealloc {
    [super dealloc];
}


-(IBAction)showFromLeft
{	
	CGRect frame = self.frame;
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:0.3];
	frame.origin.x = 30;
	self.frame = frame;
	
	[UIView commitAnimations];
}
-(IBAction)hideToLeft
{
	
	CGRect frame = self.frame;
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:0.3];
	frame.origin.x = -400;
	self.frame = frame;
	
	[UIView commitAnimations];
}

@end
