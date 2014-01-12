//
//  LessonCatalogViewController.h
//  UniverseKingdom
//
//  Created by Kai Chu  on 12/31/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlistManager.h"
#import "LessonDetailViewController.h"
#import "Config.h"
@class MainView; 

@interface LessonCatalogViewController : UIViewController {
	 
	IBOutlet MainView *mainView;
	IBOutlet UINavigationBar *navbar;
	IBOutlet UINavigationItem *navleftbtn;
	UIButton *btnLesson[9];
	UILabel *lblLesson[9];
} 

- (IBAction)buttonPressedAction:(id)sender;
- (void)gotoLessonDetailViewController;

@end
