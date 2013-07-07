//
//  TKTOViewController.h
//  Tackletoe
//
//  Created by Robert Huebner on 7/5/13.
//  Copyright (c) 2013 Robert Huebner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TKTOGame.h"
#import "TKTOPlayer.h"

@interface TKTOViewController : UIViewController

-(void) game:(TKTOGame*)game didEnd:(TKTOPlayer*)winner;

@end
