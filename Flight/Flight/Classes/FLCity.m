//
//  FLCity.m
//  Flight
//
//  Created by Freddy on 15/4/14.
//  Copyright (c) 2014 Freddy So. All rights reserved.
//

#import "FLCity.h"

@interface FLCity ()

@property (nonatomic, strong, readwrite) NSString* code;
@property (nonatomic, strong, readwrite) NSString* nameEn;
@property (nonatomic, strong, readwrite) NSString* nameCn;
@property (nonatomic, strong, readwrite) NSString* nameTw;
@property (nonatomic, strong, readwrite) NSString* countryCode;
@property (nonatomic, strong, readwrite) NSString* airportCode;

@end

@implementation FLCity

-(instancetype)initWithDictionary:(NSDictionary *)data{
    if( self = [super initWithDictionary:data] ){
        self.code = [data objectForKey:FLCity_Code];
        self.nameEn = [data objectForKey:FLCity_NameEn];
        self.nameCn = [data objectForKey:FLCity_NameCn];
        self.nameTw = [data objectForKey:FLCity_NameTw];
        self.countryCode = [data objectForKey:FLCity_MasACountryCode];
        self.airportCode = [data objectForKey:FLCity_MasAAirportCode];
    }
    return self;
}

@end

NSString* FLCity_Code = @"code";
NSString* FLCity_NameEn = @"name_en";
NSString* FLCity_NameCn = @"name_cn";
NSString* FLCity_NameTw = @"name_tw";
NSString* FLCity_MasACountryCode = @"mas_A_country_code";
NSString* FLCity_MasAAirportCode = @"mas_A_airport_code";