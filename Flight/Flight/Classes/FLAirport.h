//
//  FLAirport.h
//  Flight
//
//  Created by Freddy on 15/4/14.
//  Copyright (c) 2014 Freddy So. All rights reserved.
//

#import "YTDataSource.h"

@interface FLAirport : YTDataSource

@property (nonatomic, strong, readonly) NSString* code;
@property (nonatomic, strong, readonly) NSString* nameEn;
@property (nonatomic, strong, readonly) NSString* nameCn;
@property (nonatomic, strong, readonly) NSString* nameTw;
@property (nonatomic, strong, readonly) NSString* cityCode;
@property (nonatomic, strong, readonly) NSString* website;

@property (nonatomic, strong, readonly) NSString* name;

@end

extern NSString* FLAirport_Code;
extern NSString* FLAirport_NameEn;
extern NSString* FLAirport_NameCn;
extern NSString* FLAirport_NameTw;
extern NSString* FLAirport_MasCityCode;
extern NSString* FLAirport_Website;