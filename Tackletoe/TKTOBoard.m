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
	NSArray *cellRectValues;
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
    for(NSValue *rectValue in cellRectValues) {
        CGRect rect = [rectValue CGRectValue];
        TKTOMark *mark = [[TKTOMark alloc] initWithFrame:rect];
        mark.backgroundColor = [UIColor clearColor];
        [self addSubview:mark];
        [mark set:TKTOMarkedStatusO];
    }
}

-(void) initSubboards {
    NSLog(@"init subboards");
    for(NSValue *rectValue in cellRectValues) {
        CGRect rect = [rectValue CGRectValue];
        TKTOBoard *subboard = [[TKTOBoard alloc] initWithFrame:rect];
        subboard.backgroundColor = [UIColor clearColor];
        [self addSubview:subboard];
        [subboard initMarks];
        NSLog(@"add subboard");
    }
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

-(TKTOMarkedStatus) markedStatus {
    return [self checkWin];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGFloat insetAmount = 10.0;
    CGRect insetRect = CGRectInset(rect, insetAmount, insetAmount);
    CGFloat lineWidth = rect.size.width / 25.0;
    
    CGFloat cellWidth = insetRect.size.width / 3.0;
    CGFloat cellHeight = insetRect.size.height / 3.0;
    
    [[UIColor blackColor] setStroke];
    CGContextSetLineWidth(context, lineWidth);
    
    
    CGContextMoveToPoint(context, insetRect.origin.x+1*cellWidth, insetRect.origin.y+0*cellHeight);
    CGContextAddLineToPoint(context, insetRect.origin.x+1*cellWidth, insetRect.origin.y+3*cellHeight);
    CGContextStrokePath(context);
    CGContextMoveToPoint(context, insetRect.origin.x+2*cellWidth, insetRect.origin.y+0*cellHeight);
    CGContextAddLineToPoint(context, insetRect.origin.x+2*cellWidth, insetRect.origin.y+3*cellHeight);
    CGContextStrokePath(context);
    CGContextMoveToPoint(context, insetRect.origin.x+0*cellWidth, insetRect.origin.y+1*cellHeight);
    CGContextAddLineToPoint(context, insetRect.origin.x+3*cellWidth, insetRect.origin.y+1*cellHeight);
    CGContextStrokePath(context);
    CGContextMoveToPoint(context, insetRect.origin.x+0*cellWidth, insetRect.origin.y+2*cellHeight);
    CGContextAddLineToPoint(context, insetRect.origin.x+3*cellWidth, insetRect.origin.y+2*cellHeight);
    CGContextStrokePath(context);
    
    NSMutableArray *rects = [NSMutableArray array];
    for(int i = 0; i < 3; i++) for(int j = 0; j < 3; j++) {
        CGFloat x = insetRect.origin.x + i*cellWidth;
        CGFloat y = insetRect.origin.y + j*cellHeight;
        [rects addObject:[NSValue valueWithCGRect:CGRectMake(x, y, cellWidth, cellHeight)]];
    }
    cellRectValues = [rects copy];
}


@end
