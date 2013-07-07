//
//  TKTOBoard.m
//  Tackletoe
//
//  Created by Robert Huebner on 7/5/13.
//  Copyright (c) 2013 Robert Huebner. All rights reserved.
//

#import "TKTOBoard.h"

@implementation TKTOBoard {
	NSArray *cells; //type: tktomark or tktoboard
	
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void) initMarks {
    
}

-(void) initSubboards {
    
}

-(TKTOMarkedStatus) checkWin {
	NSArray *winPatterns = @[ @[@0,@1,@2] , @[@3,@4,@5] , @[@6,@7,@8] ,
                              @[@0,@3,@6] , @[@1,@4,@7] , @[@2,@5,@7] ,
                              @[@0,@4,@8] , @[@2,@4,@6] ];
	
	NSMutableArray *Xmarks = [NSMutableArray array];
    NSMutableArray *Omarks = [NSMutableArray array];
    
    for( int i = 0; i < [cells count]; i++ ) {
        switch ([cells[i] markedStatus]) {
            case TKTOMarkedStatusX:
                [Xmarks addObject:[NSNumber numberWithInt:i]];
                break;
            case TKTOMarkedStatusO:
                [Omarks addObject:[NSNumber numberWithInt:i]];
                break;
            case TKTOMarkedStatusUnmarked:
                
                break;
            default:
                break;
        }
    }
    
    return TKTOMarkedStatusUnmarked;
}

-(TKTOMarkedStatus) markedStatus {
    return [self checkWin];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
