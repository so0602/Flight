//
//  FLAirline.m
//  Flight
//
//  Created by Freddy on 15/4/14.
//  Copyright (c) 2014 Freddy So. All rights reserved.
//

#import "FLAirline.h"

@interface FLAirline ()

@property (nonatomic, strong, readwrite) NSString* code;
@property (nonatomic, strong, readwrite) NSString* nameEn;
@property (nonatomic, strong, readwrite) NSString* nameCn;
@property (nonatomic, strong, readwrite) NSString* nameTw;
@property (nonatomic, strong, readwrite) NSString* extension;
@property (nonatomic, strong, readwrite) NSNumber* childAge;
@property (nonatomic, strong, readwrite) NSNumber* senAge;
@property (nonatomic, strong, readwrite) NSString* website;
@property (nonatomic, strong, readwrite) NSString* tel;

@end

@implementation FLAirline

-(instancetype)initWithDictionary:(NSDictionary *)data{
    if( self = [super initWithDictionary:data] ){
        self.code = [data objectForKey:FLAirline_Code];
        self.nameEn = [data objectForKey:FLAirline_NameEn];
        self.nameCn = [data objectForKey:FLAirline_NameCn];
        self.nameTw = [data objectForKey:FLAirline_NameTw];
        self.extension = [data objectForKey:FLAirline_Extension];
        self.childAge = [data objectForKey:FLAirline_ChildAge];
        self.senAge = [data objectForKey:FLAirline_SenAge];
        self.website = [data objectForKey:FLAirline_Website];
        self.tel = [data objectForKey:FLAirline_Tel];
    }
    return self;
}

@end

NSString* FLAirline_Code = @"code";
NSString* FLAirline_NameEn = @"name_en";
NSString* FLAirline_NameCn = @"name_cn";
NSString* FLAirline_NameTw = @"name_tw";
NSString* FLAirline_Extension = @"extension";
NSString* FLAirline_ChildAge = @"child_age";
NSString* FLAirline_SenAge = @"sen_age";
NSString* FLAirline_Website = @"website";
NSString* FLAirline_Tel = @"tel";