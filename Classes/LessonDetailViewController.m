//
//  LessonDetailViewController.m
//  UniverseKingdom
//
//  Created by Kai Chu  on 1/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LessonDetailViewController.h"
#import "LessonConfig.h"
#import <QuartzCore/QuartzCore.h>

@implementation LessonDetailViewController

@synthesize navbar; 
@synthesize img_background;
@synthesize component_btn;
@synthesize intro_btn;
// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
 
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
 

 
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
// anything related to status bar is affected here
- (void)viewDidLoad {
  
	[super viewDidLoad];
    //self.navigationController.navigationBar.frame = CGRectOffset(self.navigationController.navigationBar.frame, 0.0, -900.0);
    //[[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:NO];
    //[[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackTranslucent animated:NO];
   
	lessonConfig = [PlistManager loadCurrentLessonConfig];
	
	//navbar.topItem.title = lessonConfig.lesson_name;
	[img_background setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:lessonConfig.background_path ofType:@"png"]]];	
	
	[self showIntroPopup];
	if (lessonConfig.component_mode < 2)
	{
		[component_btn removeFromSuperview];
        [intro_btn removeFromSuperview];
	}

}
 

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

- (IBAction)backToLessonCatalog:(id)sender
{
	[self.view removeFromSuperview];	
}
-(IBAction)playVideo
{
    
	[self startVideo:lessonConfig.lesson_video_path];
}
-(IBAction)playMorph 
{
	[self startVideo_repeat:lessonConfig.lesson_morph_path];
}
-(IBAction)playStrokeOrder 
{
	[self startVideo_repeat:lessonConfig.lesson_stroke_path];
}
-(IBAction)practiceWriting 
{
	[self.view addSubview:practiceView];
}

// Scrollable Text
-(IBAction)showIntroPopup
{
    
	[introPopup lblText].text = lessonConfig.intro_text;
	[introPopup lblText].frame = CGRectMake(4,4,275,140);
	[introPopup lblText].layer.backgroundColor = [UIColor clearColor].CGColor; 
	introPopup.frame = CGRectMake(17,200,290,150); //(30,200,290,150);
	introPopup.alpha = 0.8;
	introPopup.layer.backgroundColor = [UIColor clearColor].CGColor;
    introPopup.layer.cornerRadius = 15;
	[self.view insertSubview:introPopup atIndex:0];
	[self.view bringSubviewToFront:introPopup];
	[componentPopup hideToLeft];
}

-(IBAction)showComponentPopup
{
	[[componentPopup component_image1] setImage: [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:lessonConfig.component1_path ofType:@"png"]]];
	[[componentPopup component_image2] setImage: [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:lessonConfig.component2_path ofType:@"png"]]];
	[[componentPopup component_final_image] setImage: [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:lessonConfig.component_final_path ofType:@"png"]]];
	
	componentPopup.frame = CGRectMake(30,200,280,150);
	componentPopup.alpha = 0.8;	
	componentPopup.layer.backgroundColor = [UIColor colorWithRed:183.0f/255.0f green:206.0f/255.0f blue:218.0f/255.0f alpha:0.9f].CGColor; 
	componentPopup.layer.borderColor = [UIColor blackColor].CGColor;
	componentPopup.layer.cornerRadius = 15;
	componentPopup.layer.borderWidth = 1.0f;
	[self.view insertSubview:componentPopup atIndex:0];
	[self.view bringSubviewToFront:componentPopup];
	[introPopup hideToLeft];
	[componentPopup showFromLeft];	
}

-(IBAction)showSubtitlePopup
{
	[subtitlePopup lblText].text = lessonConfig.subtitle_text;
	[subtitlePopup lblText].frame = CGRectMake(4,4,225,75);
	subtitlePopup.frame = CGRectMake(-400,275,260,80);
	subtitlePopup.alpha = 0.8;
	subtitlePopup.layer.borderColor = [UIColor blackColor].CGColor;
	subtitlePopup.layer.cornerRadius = 10;
	subtitlePopup.layer.borderWidth = 1.5f;
	[self.view insertSubview:subtitlePopup atIndex:0];
	[self.view bringSubviewToFront:subtitlePopup];
	
}


-(void)startVideo:(NSString *)movieName
{
	NSURL * theURL;
	NSBundle *bundle = [NSBundle mainBundle];
	NSString *moviePath = [bundle pathForResource: movieName ofType:@"mp4"];
	theURL = [NSURL fileURLWithPath:moviePath];
	[theURL retain];
	
	[self playMovieAtURL:theURL];
}


-(void)playMovieAtURL:(NSURL*)theURL
{
    MPMoviePlayerViewController *playerViewController =
    [[MPMoviePlayerViewController alloc] 
    initWithContentURL:theURL];
    
    [[NSNotificationCenter defaultCenter] 
    addObserver:self
    selector:@selector(movieFinishedCallback:)
    name:MPMoviePlayerPlaybackDidFinishNotification
    object:[playerViewController moviePlayer]];

    CGSize result = [[UIScreen mainScreen] bounds].size;
    [playerViewController.view setCenter:CGPointMake(result.width/2, result.height/2)];
    [self.view addSubview:playerViewController.view];
    
    //---play movie---
    MPMoviePlayerController *player = [playerViewController moviePlayer];
    player.controlStyle = MPMovieControlStyleFullscreen;

    //	player.scalingMode = MPMovieScalingModeAspectFill;
	player.repeatMode = MPMovieRepeatModeNone;
    
    player.view.frame = CGRectMake(0, 0, 320, 480); // 0,0,1024, 768

    [player prepareToPlay];
	[player play];
	

}

-(void)startVideo_repeat:(NSString *)movieName
{
    //[[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationNone];
	NSURL * theURL;
	NSBundle *bundle = [NSBundle mainBundle];
	NSString *moviePath = [bundle pathForResource: movieName ofType:@"mp4"];
	theURL = [NSURL fileURLWithPath:moviePath];
	[theURL retain];
	
	[self playMovieAtURL_repeat:theURL];
}


-(void)playMovieAtURL_repeat:(NSURL*)theURL
{
	MPMoviePlayerViewController *playerViewController = 
    [[MPMoviePlayerViewController alloc] 
	 initWithContentURL:theURL];
    
    [[NSNotificationCenter defaultCenter] 
	 addObserver:self
	 selector:@selector(movieFinishedCallback:)
	 name:MPMoviePlayerPlaybackDidFinishNotification
	 object:[playerViewController moviePlayer]];
    
    CGSize result = [[UIScreen mainScreen] bounds].size;
    [playerViewController.view setCenter:CGPointMake(result.width/2, result.height/2)];
    [self.view addSubview:playerViewController.view];
    
    //---play movie---
    
    MPMoviePlayerController *player = [playerViewController moviePlayer];
    player.controlStyle = MPMovieControlStyleFullscreen;//MPMovieControlStyleFullscreen;
    
//	player.scalingMode = MPMovieScalingModeAspectFill;
//	player.repeatMode = MPMovieRepeatModeOne;
    
    
    player.view.frame = CGRectMake(0, 0, 320, 480); // 0,0,1024, 768
	[player play];
	[super viewDidLoad];
    
}


-(void)movieFinishedCallback:(NSNotification*)aNotification
{
	MPMoviePlayerController *player = [aNotification object];
    [[NSNotificationCenter defaultCenter] 
	 removeObserver:self
	 name:MPMoviePlayerPlaybackDidFinishNotification
	 object:player];
    [player.view removeFromSuperview];
    [self showIntroPopup];
	
}

-(IBAction)playCharSound
{
	NSLog(@"%@",lessonConfig.charsound_path);

	NSString *soundFilePath =
	[[NSBundle mainBundle] pathForResource: lessonConfig.charsound_path
									ofType: @"mp3"];
	
	NSURL *fileURL = [[NSURL alloc] initFileURLWithPath: soundFilePath];
	
	AVAudioPlayer *newPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL: fileURL
																	  error: nil];
	[fileURL release];
	newPlayer.delegate = self;
	[newPlayer prepareToPlay];
	[newPlayer play];
	
	//[newPlayer release];

}
- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag
{
	if (flag==YES){
		[player release];
		NSLog(@"%@",@"finished");

	}
}
- (void)audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError *)error
{
	NSLog(@"%@", @"error");
}




@end
