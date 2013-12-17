//
//  LessonConfig.h
//  UniverseKingdom
//
//  Created by Ruogu Li  on 12/22/10.
//  Copyright 2011 USAsiaInternet. Inc. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface LessonConfig : NSObject {
	int lesson_id;
	NSString *series_name;
	NSString *lesson_name;
	NSString *lesson_video_path;
	NSString *lesson_morph_path;
	NSString *lesson_stroke_path;
	NSString *icon_path;
	NSString *background_path;
	NSString *practice_imgbg_path;
	NSString *charsound_path;
	int component_mode;
	NSString *component1_path;
	NSString *component2_path;
	NSString *component_final_path;
	NSString *intro_text;
	NSString *subtitle_text;
}

@property int  lesson_id;
@property (nonatomic, retain) NSString * series_name;
@property (nonatomic, retain) NSString * lesson_name;
@property (nonatomic, retain) NSString * lesson_video_path;
@property (nonatomic, retain) NSString * lesson_morph_path;
@property (nonatomic, retain) NSString * lesson_stroke_path;
@property (nonatomic, retain) NSString * icon_path;
@property (nonatomic, retain) NSString * background_path;
@property (nonatomic, retain) NSString * practice_imgbg_path;
@property (nonatomic, retain) NSString * charsound_path;
@property int component_mode;
@property (nonatomic, retain) NSString * component1_path;
@property (nonatomic, retain) NSString * component2_path;
@property (nonatomic, retain) NSString * component_final_path;
@property (nonatomic, retain) NSString * intro_text;
@property (nonatomic, retain) NSString * subtitle_text;

@end
