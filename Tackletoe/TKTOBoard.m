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
	
	NSMutableSet *Xmarks = [NSMutableSet set];
    NSMutableSet *Omarks = [NSMutableSet set];
    
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
    
    int xWinPattern = -1;
    int oWinPattern = -1;
    for(int i = 0; i < [winPatterns count]; i++) {
    	NSSet *pattern = [NSSet setWithArray:winPatterns[i]];
    	if([pattern isSubset:Xmarks]) xWinPattern = i;
    	if([pattern isSubset:Omarks]) oWinPattern = i;
    }
    
    if(xWinPattern) return TKTOMarkedStatusX;
    if(oWinPattern) return TKTOMarkedStatusO;
    return TKTOMarkedStatusUnmarked;
}

-(TKTOMarkedStatus) markedStatus {
    return [self checkWin];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    
}


@end
