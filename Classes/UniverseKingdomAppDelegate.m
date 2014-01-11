//
//  UniverseKingdomAppDelegate.m
//  UniverseKingdom
//
//  Created by Kai Chu  on 8/31/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "UniverseKingdomAppDelegate.h"
#import "UniverseKingdomViewController.h"
#import "LessonConfig.h"

@implementation UniverseKingdomAppDelegate

@synthesize window;
@synthesize viewController;
@synthesize currentLessonConfig;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch
    CGSize result = [[UIScreen mainScreen] bounds].size;
    [viewController.view setCenter:CGPointMake(result.width/2, result.height/2)];
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
    

	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
