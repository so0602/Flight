//
//  FLAirline.h
//  Flight
//
//  Created by Freddy on 15/4/14.
//  Copyright (c) 2014 Freddy So. All rights reserved.
//

#import "YTDataSource.h"

@interface FLAirline : YTDataSource

@property (nonatomic, strong, readonly) NSString* code;
@property (nonatomic, strong, readonly) NSString* nameEn;
@property (nonatomic, strong, readonly) NSString* nameCn;
@property (nonatomic, strong, readonly) NSString* nameTw;
@property (nonatomic, strong, readonly) NSString* extension;
@property (nonatomic, strong, readonly) NSNumber* childAge;
@property (nonatomic, strong, readonly) NSNumber* senAge;
@property (nonatomic, strong, readonly) NSString* website;
@property (nonatomic, strong, readonly) NSString* tel;

@property (nonatomic, strong, readonly) NSString* name;

@end

extern NSString* FLAirline_Code;
extern NSString* FLAirline_NameEn;
extern NSString* FLAirline_NameCn;
extern NSString* FLAirline_NameTw;
extern NSString* FLAirline_Extension;
extern NSString* FLAirline_ChildAge;
extern NSString* FLAirline_SenAge;
extern NSString* FLAirline_Website;
extern NSString* FLAirline_Tel;
