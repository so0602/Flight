//
//  FLFlightMainViewController.m
//  Flight
//
//  Created by Freddy on 25/3/14.
//  Copyright (c) 2014 Freddy So. All rights reserved.
//

#import "FLFlightMainViewController.h"

#import "FLDatabase.h"

@interface FLFlightMainViewController ()

@end

@implementation FLFlightMainViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden = FALSE;
    
    [FLDatabase database];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    YTLog(@"airlines: %d", [FLDatabase database].airlines.count);
    YTLog(@"airports: %d", [FLDatabase database].airports.count);
    YTLog(@"cities: %d", [FLDatabase database].cities.count);
    YTLog(@"countries: %d", [FLDatabase database].countries.count);
}

-(void)languageDidChanged{
    [super languageDidChanged];
    
    self.title = @"Flight";
}

@end
