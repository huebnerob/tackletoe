//
//  TKTOViewController.m
//  Tackletoe
//
//  Created by Robert Huebner on 7/5/13.
//  Copyright (c) 2013 Robert Huebner. All rights reserved.
//

#import "TKTOViewController.h"

@interface TKTOViewController ()
@property (weak, nonatomic) IBOutlet TKTOBoardView *board;

@end

@implementation TKTOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void) viewDidAppear:(BOOL)animated {
    [_board initSubboards];
}

-(void) game:(TKTOGame*)game didEnd:(TKTOPlayer*)winner {
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
