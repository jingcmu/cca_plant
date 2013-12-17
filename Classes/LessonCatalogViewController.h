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
	UIButton *btnLesson1;
	UIButton *btnLesson2;
	UIButton *btnLesson3;
	UIButton *btnLesson4;
	UIButton *btnLesson5;
	UIButton *btnLesson6;
	UIButton *btnLesson7;
	UIButton *btnLesson8;
	UIButton *btnLesson9;
	UIButton *btnLesson10;
	UIButton *btnLesson11;
	UIButton *btnLesson12;
	UILabel *lblLesson1;
	UILabel *lblLesson2;
	UILabel *lblLesson3;
	UILabel *lblLesson4;
	UILabel *lblLesson5;
	UILabel *lblLesson6;
	UILabel *lblLesson7;
	UILabel *lblLesson8;
	UILabel *lblLesson9;
	UILabel *lblLesson10;
	UILabel *lblLesson11;
	UILabel *lblLesson12;
}

@property (nonatomic, retain) UINavigationBar * navbar;
@property (nonatomic, retain) UINavigationItem * navleftbtn;
@property (nonatomic, retain) UIButton * btnLesson1;
@property (nonatomic, retain) UIButton * btnLesson2;
@property (nonatomic, retain) UIButton * btnLesson3;
@property (nonatomic, retain) UIButton * btnLesson4;
@property (nonatomic, retain) UIButton * btnLesson5;
@property (nonatomic, retain) UIButton * btnLesson6;
@property (nonatomic, retain) UIButton * btnLesson7;
@property (nonatomic, retain) UIButton * btnLesson8;
@property (nonatomic, retain) UIButton * btnLesson9;
@property (nonatomic, retain) UIButton * btnLesson10;
@property (nonatomic, retain) UIButton * btnLesson11;
@property (nonatomic, retain) UIButton * btnLesson12;

@property (nonatomic, retain) UILabel * lblLesson1;
@property (nonatomic, retain) UILabel * lblLesson2;
@property (nonatomic, retain) UILabel * lblLesson3;
@property (nonatomic, retain) UILabel * lblLesson4;
@property (nonatomic, retain) UILabel * lblLesson5;
@property (nonatomic, retain) UILabel * lblLesson6;
@property (nonatomic, retain) UILabel * lblLesson7;
@property (nonatomic, retain) UILabel * lblLesson8;
@property (nonatomic, retain) UILabel * lblLesson9;
@property (nonatomic, retain) UILabel * lblLesson10;
@property (nonatomic, retain) UILabel * lblLesson11;
@property (nonatomic, retain) UILabel * lblLesson12;
 

- (IBAction)buttonPressedAction:(id)sender;
- (void)gotoLessonDetailViewController;

@end
