//
//  TKTOMove.h
//  Tackletoe
//
//  Created by Robert Huebner on 7/5/13.
//  Copyright (c) 2013 Robert Huebner. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TKTOPlayer;
@interface TKTOMove : NSObject {
    int subBoardIndex;
    int boardMoveIndex;
    TKTOPlayer *mover;
}

@end
