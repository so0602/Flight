//
//  FLViewController.m
//  Flight
//
//  Created by Freddy on 25/3/14.
//  Copyright (c) 2014 Freddy So. All rights reserved.
//

#import "FLViewController.h"

@interface FLViewController ()

@end

@implementation FLViewController

-(void)viewDidLoad{
    if( [self respondsToSelector:@selector(edgesForExtendedLayout)] ){
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    [super viewDidLoad];
    
    [self languageDidChanged];
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithHexString:@"68B5EF"];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                                                   [UIColor whiteColor], NSForegroundColorAttributeName, nil];
}

@end
