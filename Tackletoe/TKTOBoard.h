//
//  TKTOGrid.h
//  Tackletoe
//
//  Created by Robert Huebner on 7/9/13.
//  Copyright (c) 2013 Robert Huebner. All rights reserved.
//

#import "TKTOMark.h"

@interface TKTOBoard : NSObject <TKTOMarked> {
    NSArray *cells; //id<TKTOMarked>
}

@end
