//
//  InfoView.h
//  universe proj 265d
//
//  Created by Kai Chu  on 8/30/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class MainView; 

@interface InfoView : UIView {
	IBOutlet MainView *mainView;
	IBOutlet UIImageView *backgroundImage;
}

//Goes to AboutUsView.
-(IBAction)goToAboutUs;

//Goes to LessonView
-(IBAction)goToLesson;
@property (nonatomic, retain) IBOutlet UIImageView *backgroundImage;
@end
