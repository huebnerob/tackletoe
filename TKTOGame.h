//
//  TKTOGame.h
//  Tackletoe
//
//  Created by Robert Huebner on 7/5/13.
//  Copyright (c) 2013 Robert Huebner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TKTOBoardView.h"
#import "TKTOBoard.h"
@class TKTOPlayer;
@class TKTOMove;

@interface TKTOGame : NSObject

+(TKTOGame*) create;

-(BOOL) player:(TKTOPlayer*)player madeMoveTo:(TKTOMove*)move; //YES if move allowed

//internal game logic

-(BOOL) checkWin;

@end

@protocol TKTOGameDelegate <NSObject>

-(void) setBoardValues: (NSArray*)boardValues;

-(void) player:(TKTOPlayer*)player didMoveTo:(TKTOMove*)move;

@end
