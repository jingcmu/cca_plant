//
//  UniverseKingdomViewController.m
//  UniverseKingdom
//
//  Created by Kai Chu  on 8/31/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "UniverseKingdomViewController.h"
#import "MainView.h"


@implementation UniverseKingdomViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

/*

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}


// Since Mplayer was used, all files changed permanently to landscape and no other mode used. For future development MPMediacontroller will handle and this value will allow landscape and portrait.
*/
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    
    
   // return YES;
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
    
    // This one will allow both orientation return (interfaceOrientation !=
  //  UIInterfaceOrientationPortraitUpsideDown);
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
