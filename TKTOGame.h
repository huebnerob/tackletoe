//
//  TKTOGame.h
//  Tackletoe
//
//  Created by Robert Huebner on 7/5/13.
//  Copyright (c) 2013 Robert Huebner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TKTOBoard.h"
@class TKTOPlayer;
@class TKTOMove;

@interface TKTOGame : NSObject

-(void) newGame;

-(BOOL) player:(TKTOPlayer*)player willMoveTo:(TKTOMove*)move;
-(void) player:(TKTOPlayer*)player didMoveTo:(TKTOMove*)move;

//internal game logic

-(BOOL) checkWin;

@end
