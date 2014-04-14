//
//  FLAirport.m
//  Flight
//
//  Created by Freddy on 15/4/14.
//  Copyright (c) 2014 Freddy So. All rights reserved.
//

#import "FLAirport.h"

@interface FLAirport ()

@property (nonatomic, strong, readwrite) NSString* code;
@property (nonatomic, strong, readwrite) NSString* nameEn;
@property (nonatomic, strong, readwrite) NSString* nameCn;
@property (nonatomic, strong, readwrite) NSString* nameTw;
@property (nonatomic, strong, readwrite) NSString* cityCode;
@property (nonatomic, strong, readwrite) NSString* website;

@end

@implementation FLAirport

-(instancetype)initWithDictionary:(NSDictionary *)data{
    if( self = [super initWithDictionary:data] ){
        self.code = [data objectForKey:FLAirport_Code];
        self.nameEn = [data objectForKey:FLAirport_NameEn];
        self.nameCn = [data objectForKey:FLAirport_NameCn];
        self.nameTw = [data objectForKey:FLAirport_NameTw];
        self.cityCode = [data objectForKey:FLAirport_MasCityCode];
        self.website = [data objectForKey:FLAirport_Website];
    }
    return self;
}

@end

NSString* FLAirport_Code = @"code";
NSString* FLAirport_NameEn = @"name_en";
NSString* FLAirport_NameCn = @"name_cn";
NSString* FLAirport_NameTw = @"name_tw";
NSString* FLAirport_MasCityCode = @"mas_city_code";
NSString* FLAirport_Website = @"website";
