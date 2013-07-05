//
//  TKTOGame.h
//  Tackletoe
//
//  Created by Robert Huebner on 7/5/13.
//  Copyright (c) 2013 Robert Huebner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TKTOBoard.h"
#import "TKTOPlayer.h"

@interface TKTOGame : NSObject

-(BOOL) player:(TKTOPlayer*)player willMoveTo:
-(void) player:(TKTOPlayer*)player didMoveTo:

@end
