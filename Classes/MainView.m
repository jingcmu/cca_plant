//
//  MainView.m
//  universe proj 265d
//
//  Created by Kai Chu  on 8/30/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MainView.h"
#import "InfoView.h"
#import "AboutUsView.h"
#import "InstructionView.h"
#import "LessonCatalogViewController.h"



@implementation MainView
 

-(void)awakeFromNib
{
  
	[self addSubview: infoView];
}
 


//Switches to AboutUs View.
-(void)goToAboutUs{
    [lessonCatalogView removeFromSuperview];
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:0.3];
	
	[self addSubview: aboutUsView];
	[UIView commitAnimations];

}

//Switches to InfoView.
-(void)goToInfo{
	if ([infoView backgroundImage].alpha <1){
        [infoView backgroundImage].alpha = 1;
    }
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:0.3];
	[self addSubview: infoView];
	[UIView commitAnimations];
}

//Switches to LessonView.
-(void)goToLesson{
	LessonCatalogViewController *controller = [[LessonCatalogViewController alloc] initWithNibName:@"LessonCatalogViewController" bundle:nil];
	[self addSubview: controller.view];
}
 
//Clears AboutUs View.
-(void)clearAboutUsView{
	
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:0.3];
	[aboutUsView removeFromSuperview];
	[UIView commitAnimations];
}

//Clears InfoView.
-(void)clearInfoView{
	
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:0.3];
	[infoView removeFromSuperview];
	[UIView commitAnimations];
}

//Clears LessonView.
-(void)clearLessonView{
	
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:0.3];
	[lessonCatalogView removeFromSuperview];
	[UIView commitAnimations];
}
 
@end
