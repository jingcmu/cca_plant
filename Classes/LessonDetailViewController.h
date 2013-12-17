//
//  LessonDetailViewController.h
//  UniverseKingdom
//
//  Created by Kai Chu  on 1/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LessonConfig.h"
#import "PlistManager.h"
#import <MediaPlayer/MediaPlayer.h>
#import "PracticeView.h"
#import "TextPopup.h"
#import "ComponentPopup.h"
#import "ViewSingleton.h"
#import <AVFoundation/AVAudioPlayer.h>
#import <AVFoundation/AVFoundation.h>


@interface LessonDetailViewController : UIViewController <AVAudioPlayerDelegate>{
	 
	IBOutlet UINavigationBar *navbar;
	IBOutlet UIBarItem *btnBack;
	LessonConfig *lessonConfig;
	IBOutlet PracticeView *practiceView;
	IBOutlet TextPopup *introPopup;
	IBOutlet UIImageView *img_background;
	IBOutlet TextPopup *subtitlePopup;
	IBOutlet ComponentPopup *componentPopup;
	IBOutlet UIButton * component_btn;
    IBOutlet UIButton * intro_btn;
}
@property (nonatomic, retain) IBOutlet UINavigationBar *navbar; 
@property (nonatomic, retain) IBOutlet UIImageView * img_background;
@property (nonatomic, retain) IBOutlet UIButton * component_btn;
@property (nonatomic, retain) IBOutlet UIButton * intro_btn;
- (IBAction)backToLessonCatalog:(id)sender;
-(IBAction)playVideo;
-(IBAction)playMorph;
-(IBAction)playStrokeOrder;
-(IBAction)practiceWriting;
-(IBAction)showIntroPopup;
-(IBAction)showSubtitlePopup;
-(IBAction)showComponentPopup;
-(IBAction)playCharSound;
-(void)startVideo:(NSString *)movieName;
-(void)playMovieAtURL:(NSURL*)theURL;
-(void)startVideo_repeat:(NSString *)movieName;
-(void)playMovieAtURL_repeat:(NSURL*)theURL;
-(void)movieFinishedCallback:(NSNotification*)aNotification;


@end
