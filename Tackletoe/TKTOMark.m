//
//  TKTOMark.m
//  Tackletoe
//
//  Created by Robert Huebner on 7/5/13.
//  Copyright (c) 2013 Robert Huebner. All rights reserved.
//

#import "TKTOMark.h"

@implementation TKTOMark {
    TKTOMarkedStatus status;
    UIColor *xColor;
    UIColor *oColor;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        xColor = [UIColor blueColor];
        oColor = [UIColor redColor];
    }
    return self;
}

-(void) set:(TKTOMarkedStatus)newStatus {
    status = newStatus;
    [self setNeedsDisplay];
}

-(TKTOMarkedStatus) markedStatus {
    return status;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGFloat insetAmount = rect.size.width / 4.0;
    CGRect insetRect = CGRectInset(rect, insetAmount, insetAmount);
    CGFloat strokeWidth = rect.size.width / 6.0;
    CGContextSetLineWidth(context, strokeWidth);
    
    switch (status) {
        case TKTOMarkedStatusX:
            [xColor setStroke];
            CGFloat maxX = CGRectGetMaxX(insetRect);
            CGFloat minX = CGRectGetMinX(insetRect);
            CGFloat maxY = CGRectGetMaxY(insetRect);
            CGFloat minY = CGRectGetMinY(insetRect);
            CGContextMoveToPoint(context, minX, minY);
            CGContextAddLineToPoint(context, maxX, maxY);
            CGContextStrokePath(context);
            CGContextMoveToPoint(context, maxX, minY);
            CGContextAddLineToPoint(context, minX, maxY);
            CGContextStrokePath(context);
            break;
        case TKTOMarkedStatusO:
            [oColor setStroke];
            CGContextAddEllipseInRect(context, insetRect);
            CGContextStrokePath(context);
            break;
        case TKTOMarkedStatusUnmarked:
                //do nothing, as yet
            break;
        default:
            break;
    }
}

@end
