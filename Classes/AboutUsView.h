//
//  AboutUsView.h
//  universe proj 265d
//
//  Created by Kai Chu  on 8/30/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class MainView;

@interface AboutUsView : UIView {
	IBOutlet MainView *mainView;
}

//Switches back to menu
-(IBAction)backToMain;
//test

@end