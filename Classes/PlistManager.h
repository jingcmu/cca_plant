//
//  PlistManager.h
//  UniverseKingdom
//
//  Created by Kai Chu  on 12/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LessonConfig.h"
#import "ViewSingleton.h"

@interface PlistManager : NSObject {

}

+ (LessonConfig *)loadLessonConfigWithSeriesName:(NSString *)series_name andLessonId:(int)lesson_id;
+ (NSString *)loadLessonIconPathWithSeriesName:(NSString *)series_name andLessonId:(int)lesson_id;
+ (void)saveCurrentLessonWithSeriesName:(NSString *)series_name andLessonId:(NSString *)lesson_id;
+ (LessonConfig *)loadCurrentLessonConfig;
@end
