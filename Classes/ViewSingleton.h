//
//  ViewSingleton.h
//  UniverseKingdom
//
//  Created by Kai Chu  on 2/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ViewSingleton : NSObject {
	NSString *currentLessonId;
	NSString *currentLessonName;
	NSString *currentSeriesName;
}

@property (nonatomic, retain) NSString *currentLessonId;
@property (nonatomic, retain) NSString *currentLessonName;
@property (nonatomic, retain) NSString *currentSeriesName;

+(ViewSingleton *)sharedSingleton;

@end
