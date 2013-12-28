//
//  MainView.h
//  universe proj 265d
//
//  Created by Kai Chu  on 8/30/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <Foundation/Foundation.h>
#import <MediaPlayer/MediaPlayer.h>

@class InfoView;
@class AboutUsView;
@class LessonCatalogView;
@class LessonCatalogViewController;

@interface MainView : UIView {
	IBOutlet InfoView *infoView;
	IBOutlet AboutUsView *aboutUsView;
	IBOutlet LessonCatalogView *lessonCatalogView;
}

//Switches to AboutUs View.
-(void)goToAboutUs;

//Switches to InfoView.
-(void)goToInfo;

//Switches to LessonView.
-(void)goToLesson;

//Clears AboutUs View.
-(void)clearAboutUsView;

//Clears InfoView.
-(void)clearInfoView;

//Clears LessonView.
-(void)clearLessonView;

@end
