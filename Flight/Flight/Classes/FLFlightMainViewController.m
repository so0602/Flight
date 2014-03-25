//
//  FLFlightMainViewController.m
//  Flight
//
//  Created by Freddy on 25/3/14.
//  Copyright (c) 2014 Freddy So. All rights reserved.
//

#import "FLFlightMainViewController.h"

@interface FLFlightMainViewController ()

@end

@implementation FLFlightMainViewController

-(void)languageDidChanged{
    [super languageDidChanged];
    
    self.title = @"Flight";
}

@end
