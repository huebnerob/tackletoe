//
//  TKTOMark.h
//  Tackletoe
//
//  Created by Robert Huebner on 7/5/13.
//  Copyright (c) 2013 Robert Huebner. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum TKTOMarkedStatus {
    TKTOMarkedStatusX,
    TKTOMarkedStatusO,
    TKTOMarkedStatusUnmarked
} TKTOMarkedStatus;

@protocol TKTOMarked <NSObject>

-(TKTOMarkedStatus) markedStatus;

@end

@interface TKTOMark : UIView <TKTOMarked>

@end
