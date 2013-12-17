//
//  textPopup.m
//  UniverseKingdom
//
//  Created by Kai Chu  on 1/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TextPopup.h"


@implementation TextPopup

@synthesize lblText;
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
	[lblText setFont:[UIFont fontWithName:@"Verdana" size:14.0f]];
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
