//
//  PracticeVIew.h
//  UniverseKingdom
//
//  Created by Kai Chu  on 1/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "LessonConfig.h"
#import "PlistManager.h"
#import "InstructionView.h"

@interface PracticeView : UIView {
	CGPoint lastPoint;
	IBOutlet UIImageView *imgBackground;
	BOOL mouseSwiped;	
	int mouseMoved;
	BOOL charIsVisible;
	LessonConfig *lessonConfig;
	IBOutlet InstructionView *instructionView;
	UIImageView *drawImage;
	NSString *imgBackground_path;


}

//erases all the lines drawn
-(IBAction)eraseLines;

//back to the lesson
-(IBAction)backToLesson;

//goes to the insrutions page
-(IBAction)gotoInstructions;

//toggles whether the character is hidden or shown.
-(IBAction)showHideChar;

@end
