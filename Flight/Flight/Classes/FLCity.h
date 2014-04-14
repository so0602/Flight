//
//  FLCity.h
//  Flight
//
//  Created by Freddy on 15/4/14.
//  Copyright (c) 2014 Freddy So. All rights reserved.
//

#import "YTDataSource.h"

@interface FLCity : YTDataSource

@property (nonatomic, strong, readonly) NSString* code;
@property (nonatomic, strong, readonly) NSString* nameEn;
@property (nonatomic, strong, readonly) NSString* nameCn;
@property (nonatomic, strong, readonly) NSString* nameTw;
@property (nonatomic, strong, readonly) NSString* countryCode;
@property (nonatomic, strong, readonly) NSString* airportCode;

@property (nonatomic, strong, readonly) NSString* name;

@end

extern NSString* FLCity_Code;
extern NSString* FLCity_NameEn;
extern NSString* FLCity_NameCn;
extern NSString* FLCity_NameTw;
extern NSString* FLCity_MasACountryCode;
extern NSString* FLCity_MasAAirportCode;