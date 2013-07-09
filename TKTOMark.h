//
//  TKTOMark.h
//  Tackletoe
//
//  Created by Robert Huebner on 7/9/13.
//  Copyright (c) 2013 Robert Huebner. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum TKTOMarkedStatus {
    TKTOMarkedStatusX,
    TKTOMarkedStatusO,
    TKTOMarkedStatusUnmarked
} TKTOMarkedStatus;

@protocol TKTOMarked <NSObject>

-(TKTOMarkedStatus) markedStatus;

@end

@interface TKTOMark : NSObject <TKTOMarked>

-(void) set:(TKTOMarkedStatus)newStatus;

@end
