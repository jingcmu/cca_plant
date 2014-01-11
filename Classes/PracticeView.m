//
//  PracticeVIew.m
//  UniverseKingdom
//
//  Created by Kai Chu  on 1/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PracticeView.h"


@implementation PracticeView


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

//back to the lesson
-(IBAction)backToLesson
{
	[self removeFromSuperview];
}

//goes to the insrutions page
-(IBAction)gotoInstructions
{
	[self addSubview:instructionView];
}

//erases all the lines drawn
-(IBAction)eraseLines
{
	drawImage.image = nil;
}

//toggles whether the character is hidden or shown by changing the background image
-(IBAction)showHideChar
{
	if(charIsVisible)
	{
		charIsVisible = FALSE;
		imgBackground.image = [UIImage imageNamed:@"charframe.png"];
	}
	else
	{
		charIsVisible = TRUE;
		imgBackground.image = [UIImage imageNamed:imgBackground_path];

	}
}

//Drawning Code:

-(void)awakeFromNib
{
    //[super viewDidLoad];
	lessonConfig = [PlistManager loadCurrentLessonConfig];
	imgBackground_path = lessonConfig.practice_imgbg_path;
	imgBackground.image = [UIImage imageNamed:imgBackground_path];
	drawImage = [[UIImageView alloc] initWithImage:nil];
	drawImage.frame = self.frame;
	[self addSubview:drawImage];
	[self setBackgroundColor: [UIColor colorWithRed:0 green:0 blue:0 alpha:0]];
	mouseMoved = 0;
	charIsVisible = TRUE;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	mouseSwiped = NO;
	UITouch *touch = [touches anyObject];
	lastPoint = [touch locationInView:self];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];	
	CGPoint currentPoint = [touch locationInView:self];
	
	if(currentPoint.y > 95.0f && currentPoint.y < 375.0f &&currentPoint.x >15.0f &&currentPoint.x < 290.0f)
    {
        
		mouseSwiped = YES;
				
		UIGraphicsBeginImageContext(self.frame.size);
		[drawImage.image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
		CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
		CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 10.0);
		CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 0.0, 0.0, 0.0, 1.0);
		CGContextBeginPath(UIGraphicsGetCurrentContext());
		CGContextMoveToPoint(UIGraphicsGetCurrentContext(), lastPoint.x, lastPoint.y);
		CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), currentPoint.x, currentPoint.y);
		CGContextStrokePath(UIGraphicsGetCurrentContext());
		drawImage.image = UIGraphicsGetImageFromCurrentImageContext();
		UIGraphicsEndImageContext();
		
		lastPoint = currentPoint;
		
		mouseMoved++;
		
		if (mouseMoved == 10)
        {
			mouseMoved = 0;
		}
	}
	
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	if(!mouseSwiped)
	{
		UIGraphicsBeginImageContext(self.frame.size);
		[drawImage.image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
		CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
		CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 10.0);
		CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 0.0, 0.0, 0.0, 1.0);
		CGContextMoveToPoint(UIGraphicsGetCurrentContext(), lastPoint.x, lastPoint.y);
		CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), lastPoint.x, lastPoint.y);
		CGContextStrokePath(UIGraphicsGetCurrentContext());
		CGContextFlush(UIGraphicsGetCurrentContext());
		drawImage.image = UIGraphicsGetImageFromCurrentImageContext();
		UIGraphicsEndImageContext();
	}
}

@end
