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
    NSArray *subBoards; //tktoboards
    
    TKTOPlayer *playerX;
    TKTOPlayer *playerO;
    
    TKTOViewController *delegate;
}

@end
