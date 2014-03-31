//
//  FLMainViewController.m
//  Flight
//
//  Created by Freddy on 31/3/14.
//  Copyright (c) 2014 Freddy So. All rights reserved.
//

#import "FLMainViewController.h"

@interface FLMainViewController ()

@property (nonatomic, strong) IBOutlet UIButton* flightsButton;
@property (nonatomic, strong) IBOutlet UIButton* accountButton;
@property (nonatomic, strong) IBOutlet UIButton* contactButton;

@end

@implementation FLMainViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = TRUE;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden = TRUE;
}

-(void)languageDidChanged{
    [super languageDidChanged];
    
    self.navigationItem.title = YTLocalizedString(@"Button_Home", nil);
}

@end
