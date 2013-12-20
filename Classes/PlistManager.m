//
//  PlistManager.m
//  UniverseKingdom
//
//  Created by Kai Chu  on 12/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PlistManager.h"
#import "Config.h"


@implementation PlistManager

+ (LessonConfig *)loadLessonConfigWithSeriesName:(NSString *)series_name andLessonId:(int)lesson_id
{
	NSString *plist_path = [[NSBundle mainBundle] pathForResource:@"lessons" ofType:@"plist"];
    
	NSMutableDictionary *allDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plist_path];
	NSMutableDictionary *seriesLessonConfigsDict = [allDict objectForKey: SERIES1_NAME]; 
	NSMutableDictionary *lessonConfigDict =
    [seriesLessonConfigsDict objectForKey:[NSString stringWithFormat:@"%@%d",@"lesson",lesson_id]];
	LessonConfig *lessonConfig = [[LessonConfig alloc] init];
	NSLog(@"Plist_Path is %@", plist_path);
	lessonConfig.lesson_id = [[lessonConfigDict objectForKey:@"lesson_id"] intValue];
	lessonConfig.series_name = [lessonConfigDict objectForKey:@"series_name"];
	lessonConfig.lesson_name = [lessonConfigDict objectForKey:@"lesson_name"];
	lessonConfig.lesson_video_path = [lessonConfigDict objectForKey:@"lesson_video_path"];
	lessonConfig.lesson_morph_path = [lessonConfigDict objectForKey:@"lesson_morph_path"];
	lessonConfig.lesson_stroke_path = [lessonConfigDict objectForKey:@"lesson_stroke_path"];
	lessonConfig.background_path = [lessonConfigDict objectForKey:@"background_path"];
	lessonConfig.icon_path = [lessonConfigDict objectForKey:@"icon_path"];
	lessonConfig.practice_imgbg_path = [lessonConfigDict objectForKey:@"practice_imgbg_path"]; 
	lessonConfig.charsound_path = [lessonConfigDict objectForKey:@"charsound_path"];
	lessonConfig.component_mode = [[lessonConfigDict objectForKey:@"component_mode"] intValue];
	lessonConfig.component1_path = [lessonConfigDict objectForKey:@"component1_path"];
	lessonConfig.component2_path = [lessonConfigDict objectForKey:@"component2_path"];
	lessonConfig.component_final_path = [lessonConfigDict objectForKey:@"component_final_path"];
	lessonConfig.intro_text = [lessonConfigDict objectForKey:@"intro_text"];
	lessonConfig.subtitle_text = [lessonConfigDict objectForKey:@"subtitle_text"];
	return lessonConfig; 
}

+ (NSString *)loadLessonIconPathWithSeriesName:(NSString *)series_name andLessonId:(int)lesson_id
{
	NSString *plist_path = [[NSBundle mainBundle] pathForResource:@"lessons" ofType:@"plist"];
	NSMutableDictionary *allDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plist_path];
	NSMutableDictionary *seriesLessonConfigsDict = [allDict objectForKey: SERIES1_NAME]; 
	NSMutableDictionary *lessonConfigDict = [seriesLessonConfigsDict objectForKey:[NSString stringWithFormat:@"%@%d",@"lesson",lesson_id]];
	NSString *icon_path = [lessonConfigDict objectForKey:@"icon_path"];
	return icon_path;
}

+ (void)saveCurrentLessonWithSeriesName:(NSString *)series_name andLessonId:(NSString *)lesson_id
{
 	[ViewSingleton sharedSingleton].currentLessonId = lesson_id;
	[ViewSingleton sharedSingleton].currentSeriesName = series_name;
}

+(LessonConfig *)loadCurrentLessonConfig
{
	NSString *currentSeriesName = [ViewSingleton sharedSingleton].currentSeriesName;
	int currentLessonId = [[[ViewSingleton sharedSingleton] currentLessonId] intValue];
	LessonConfig *config = [self loadLessonConfigWithSeriesName:currentSeriesName andLessonId:currentLessonId];
	return config;
	
	
}


@end
