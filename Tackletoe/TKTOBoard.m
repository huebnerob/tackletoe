//
//  TKTOGrid.m
//  Tackletoe
//
//  Created by Robert Huebner on 7/9/13.
//  Copyright (c) 2013 Robert Huebner. All rights reserved.
//

#import "TKTOBoard.h"

@implementation TKTOBoard

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code
    }
    return self;
}

-(TKTOMarkedStatus) markedStatus {
    return [self checkWin];
}

-(TKTOMarkedStatus) checkWin {
	NSArray *winPatterns = @[ @[@0,@1,@2] , @[@3,@4,@5] , @[@6,@7,@8] ,
                           @[@0,@3,@6] , @[@1,@4,@7] , @[@2,@5,@7] ,
                           @[@0,@4,@8] , @[@2,@4,@6] ];
	
	NSMutableSet *xMarks = [NSMutableSet set];
    NSMutableSet *oMarks = [NSMutableSet set];
    
    for( int i = 0; i < [cells count]; i++ ) {
        switch ([cells[i] markedStatus]) {
            case TKTOMarkedStatusX:
                [xMarks addObject:[NSNumber numberWithInt:i]];
                break;
            case TKTOMarkedStatusO:
                [oMarks addObject:[NSNumber numberWithInt:i]];
                break;
            case TKTOMarkedStatusUnmarked:
                
                break;
            default:
                break;
        }
    }
    
    int xWinPattern = -1;
    int oWinPattern = -1;
    for(int i = 0; i < [winPatterns count]; i++) {
    	NSSet *pattern = [NSSet setWithArray:winPatterns[i]];
    	if([pattern isSubsetOfSet:xMarks]) xWinPattern = i;
    	if([pattern isSubsetOfSet:oMarks]) oWinPattern = i;
    }
    
    if(xWinPattern) return TKTOMarkedStatusX;
    if(oWinPattern) return TKTOMarkedStatusO;
    return TKTOMarkedStatusUnmarked;
}

@end
