//
//  ComponentPopup.h
//  UniverseKingdom
//
//  Created by Kai Chu  on 3/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface ComponentPopup : UIView {
	IBOutlet UIImageView *component_image1;
	IBOutlet UIImageView *component_image2;
	IBOutlet UIImageView *component_final_image;
}

@property (nonatomic, retain) IBOutlet UIImageView * component_image1;
@property (nonatomic, retain) IBOutlet UIImageView * component_image2;
@property (nonatomic, retain) IBOutlet UIImageView * component_final_image;

-(IBAction)showFromLeft;
-(IBAction)hideToLeft;

@end
