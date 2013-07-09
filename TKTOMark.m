//
//  TKTOMark.m
//  Tackletoe
//
//  Created by Robert Huebner on 7/9/13.
//  Copyright (c) 2013 Robert Huebner. All rights reserved.
//

#import "TKTOMark.h"

@implementation TKTOMark {
    TKTOMarkedStatus status;
}

-(void) set:(TKTOMarkedStatus)newStatus {
    status = newStatus;
}

-(TKTOMarkedStatus) markedStatus {
    return status;
}

@end
