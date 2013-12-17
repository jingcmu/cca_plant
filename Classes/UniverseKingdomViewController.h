//
//  UniverseKingdomViewController.h
//  UniverseKingdom
//
//  Created by Kai Chu  on 8/31/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainView;

@interface UniverseKingdomViewController : UIViewController {
	IBOutlet MainView *mainView;
	CGPoint lastPoint;
	UIImageView *drawImage;
	BOOL mouseSwiped;	
	int mouseMoved;
}

@end

