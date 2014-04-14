//
//  FLCountry.m
//  Flight
//
//  Created by Freddy on 15/4/14.
//  Copyright (c) 2014 Freddy So. All rights reserved.
//

#import "FLCountry.h"

@interface FLCountry ()

@property (nonatomic, strong, readwrite) NSString* code;
@property (nonatomic, strong, readwrite) NSString* nameEn;
@property (nonatomic, strong, readwrite) NSString* nameCn;
@property (nonatomic, strong, readwrite) NSString* nameTw;
@property (nonatomic, strong, readwrite) NSString* capitalNameEn;
@property (nonatomic, strong, readwrite) NSString* capitalNameCn;
@property (nonatomic, strong, readwrite) NSString* capitalNameTw;
@property (nonatomic, strong, readwrite) NSString* nationalityNameEn;
@property (nonatomic, strong, readwrite) NSString* nationalityNameCn;
@property (nonatomic, strong, readwrite) NSString* nationalityNameTw;

@end

@implementation FLCountry

-(instancetype)initWithDictionary:(NSDictionary *)data{
    if( self = [super initWithDictionary:data] ){
        self.code = [data objectForKey:FLCountry_Code];
        self.nameEn = [data objectForKey:FLCountry_NameEn];
        self.nameCn = [data objectForKey:FLCountry_NameCn];
        self.nameTw = [data objectForKey:FLCountry_NameTw];
        self.capitalNameEn = [data objectForKey:FLCountry_CapitalNameEn];
        self.capitalNameCn = [data objectForKey:FLCountry_CapitalNameCn];
        self.capitalNameTw = [data objectForKey:FLCountry_CapitalNameTw];
        self.nationalityNameEn = [data objectForKey:FLCountry_NationalityNameEn];
        self.nationalityNameCn = [data objectForKey:FLCountry_NationalityNameCn];
        self.nationalityNameTw = [data objectForKey:FLCountry_NationalityNameTw];
    }
    return self;
}

@end

NSString* FLCountry_Code = @"code";
NSString* FLCountry_NameEn = @"name_en";
NSString* FLCountry_NameCn = @"name_cn";
NSString* FLCountry_NameTw = @"name_tw";
NSString* FLCountry_CapitalNameEn = @"capital_name_en";
NSString* FLCountry_CapitalNameCn = @"capital_name_cn";
NSString* FLCountry_CapitalNameTw = @"capital_name_tw";
NSString* FLCountry_NationalityNameEn = @"nationality_name_en";
NSString* FLCountry_NationalityNameCn = @"nationality_name_cn";
NSString* FLCountry_NationalityNameTw = @"nationality_name_tw";