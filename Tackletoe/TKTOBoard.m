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

-(void) checkWin {
	NSArray *winPatterns = @[ @[@1,@2,@3] , @[@4,@5,@6] , [@7,@8,@9] ]; 
	
	NSArray *p1marks
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
