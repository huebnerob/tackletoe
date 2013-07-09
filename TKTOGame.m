//
//  TKTOGame.m
//  Tackletoe
//
//  Created by Robert Huebner on 7/5/13.
//  Copyright (c) 2013 Robert Huebner. All rights reserved.
//

#import "TKTOGame.h"
@class TKTOViewController;

@implementation TKTOGame {
    TKTOBoard *mainBoard;
//    NSArray *subBoards; //tktoboards edit:access thru mainboard
    
    TKTOPlayer *playerX;
    TKTOPlayer *playerO;
    
    id<TKTOGameDelegate> delegate;
}

+(TKTOGame*) create {
    return [[TKTOGame alloc] init];
}

-(BOOL) player:(TKTOPlayer*)player madeMoveTo:(TKTOMove*)move {
    return YES;
}

-(BOOL) checkWin {
    return NO;
}

@end
