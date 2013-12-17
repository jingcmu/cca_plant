//
//  ViewSingleton.m
//  UniverseKingdom
//
//  Created by Kai Chu  on 2/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewSingleton.h"

static ViewSingleton *_sharedSingleton = nil;

@implementation ViewSingleton

@synthesize currentLessonId;
@synthesize currentLessonName;
@synthesize currentSeriesName;

#pragma mark SingletonMethods

+ (ViewSingleton *)sharedSingleton {
	@synchronized(self){
		if (_sharedSingleton == nil)
			_sharedSingleton = [[super allocWithZone:NULL] init];
	}
	return _sharedSingleton;
}

+ (id)allocWithZone:(NSZone *)zone{
	return [[self sharedSingleton] retain];
}

- (id)copyWithZone:(NSZone *)zone {
	return self;
}

-(id) retain{
	return self;
}

-(unsigned)retainCount{
	return UINT_MAX;
}
/*
-(void)release{
	//
}
*/
-(id) autorelease{
	return self;
}

//init

-(id)init {
	if (self == [super init]){
		currentLessonId = [[NSString alloc] initWithString:@""];
		currentLessonName = [[NSString alloc] initWithString:@""];
		currentSeriesName = [[NSString alloc] initWithString:@""];
	}
	return self;
}

-(void) dealloc{
	[currentLessonId release];
	[currentLessonName release];
	[currentSeriesName release];
	[super dealloc];
}

@end
