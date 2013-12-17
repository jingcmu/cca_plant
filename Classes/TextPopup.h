//
//  textPopup.h
//  UniverseKingdom
//
//  Created by Kai Chu  on 1/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface TextPopup : UIView {
	IBOutlet UITextView *lblText;
	
}
@property (nonatomic,retain) UITextView * lblText;
-(IBAction)showFromLeft;
-(IBAction)hideToLeft;

@end
