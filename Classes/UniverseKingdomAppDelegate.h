//
//  UniverseKingdomAppDelegate.h
//  UniverseKingdom
//
//  Created by Kai Chu  on 8/31/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LessonConfig.h"

@class UniverseKingdomViewController;
@class LessonConfig;


@interface UniverseKingdomAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UniverseKingdomViewController *viewController;
	LessonConfig *currentLessonConfig;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UniverseKingdomViewController *viewController;
@property (readwrite, retain) LessonConfig *currentLessonConfig;
@end

