//
//  TKTOBoard.h
//  Tackletoe
//
//  Created by Robert Huebner on 7/5/13.
//  Copyright (c) 2013 Robert Huebner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TKTOMark.h"

@interface TKTOBoard : UIView <TKTOMarked>

-(void) initMarks;
-(void) initSubboards;

@end
