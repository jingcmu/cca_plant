//
//  LessonCatalogViewController.m
//  UniverseKingdom
//
//  Created by Kai Chu  on 12/31/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "LessonCatalogViewController.h"
#import <QuartzCore/QuartzCore.h>

#if defined(__IPHONE_6_0) || defined(__IPHONE_7_0)
# define ALIGN_CENTER NSTextAlignmentCenter
#else
# define ALIGN_CENTER UITextAlignmentCenter
#endif

@implementation LessonCatalogViewController

- (void)loadView
{    
	LessonConfig *config = nil;
	UIView *catalogView = [[[UIView alloc] initWithFrame:CGRectMake(10,105,300,250)] autorelease];
	catalogView.backgroundColor = [UIColor clearColor];
	catalogView.layer.cornerRadius = 20.0;
    const int button_size = 57;
    const int lbl_width[] = {60,70,60,60,90,60,60,90,60}, lbl_height = 20;
    const int label_X_Y[] = {30,80,120,80,210,80,30,175,110,175,210,175,30,270,110,270,210,270};
    const int button_X_Y[] = {35,20,125,20,215,20,35,115,125,115,215,115,35,210,125,210,215,210};
    
    for(int i=0; i<9; i++) {
        config = [PlistManager loadLessonConfigWithSeriesName:SERIES1_NAME andLessonId:i+1];
        
        btnLesson[i] = [[UIButton buttonWithType:UIButtonTypeRoundedRect] retain];
        btnLesson[i].frame = CGRectMake(button_X_Y[i*2],button_X_Y[i*2+1],button_size,button_size);
        btnLesson[i].tag = 1;
        [btnLesson[i] setBackgroundImage:[UIImage imageNamed:config.icon_path] forState:UIControlStateNormal];
        [btnLesson[i] addTarget:self action:@selector(buttonPressedAction:) forControlEvents:UIControlEventTouchUpInside];
        [catalogView addSubview:btnLesson[i]];
        
        lblLesson[i] = [[UILabel alloc] initWithFrame:CGRectMake(label_X_Y[i*2],label_X_Y[i*2+1],lbl_width[i],lbl_height)];
        [lblLesson[i] setText:config.lesson_name];
        [lblLesson[i] setFont:[UIFont fontWithName:@"Marker Felt" size:16]];
        [lblLesson[i] setTextColor:[UIColor blackColor]];
        [lblLesson[i] setTextAlignment:ALIGN_CENTER];
        [lblLesson[i] setBackgroundColor:[UIColor clearColor]];
        [catalogView addSubview:lblLesson[i]];
    }
				
	self.view = catalogView;
}

- (void)viewDidUnload {
	[super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (IBAction)buttonPressedAction:(id)sender
{ 
	UIButton *button = (UIButton *)sender;
	int row = button.tag;
	
	
	[PlistManager saveCurrentLessonWithSeriesName:SERIES1_NAME andLessonId:[NSString stringWithFormat:@"%d",row]];
    
	[self gotoLessonDetailViewController];
 
	
}

- (void)gotoLessonDetailViewController
{
	LessonDetailViewController *controller = [[LessonDetailViewController alloc] initWithNibName:@"LessonDetailViewController" bundle:nil];
	CGSize result = [[UIScreen mainScreen] bounds].size;
    [controller.view setCenter:CGPointMake(result.width/2, result.height/2)];
	[[super.view superview] addSubview:controller.view];
}
@end
