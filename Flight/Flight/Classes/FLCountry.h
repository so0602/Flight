//
//  FLCountry.h
//  Flight
//
//  Created by Freddy on 15/4/14.
//  Copyright (c) 2014 Freddy So. All rights reserved.
//

#import "YTDataSource.h"

@interface FLCountry : YTDataSource

@property (nonatomic, strong, readonly) NSString* code;
@property (nonatomic, strong, readonly) NSString* nameEn;
@property (nonatomic, strong, readonly) NSString* nameCn;
@property (nonatomic, strong, readonly) NSString* nameTw;
@property (nonatomic, strong, readonly) NSString* capitalNameEn;
@property (nonatomic, strong, readonly) NSString* capitalNameCn;
@property (nonatomic, strong, readonly) NSString* capitalNameTw;
@property (nonatomic, strong, readonly) NSString* nationalityNameEn;
@property (nonatomic, strong, readonly) NSString* nationalityNameCn;
@property (nonatomic, strong, readonly) NSString* nationalityNameTw;

@property (nonatomic, strong, readonly) NSString* name;
@property (nonatomic, strong, readonly) NSString* capitalName;
@property (nonatomic, strong, readonly) NSString* nationalityName;

@end

extern NSString* FLCountry_Code;
extern NSString* FLCountry_NameEn;
extern NSString* FLCountry_NameCn;
extern NSString* FLCountry_NameTw;
extern NSString* FLCountry_CapitalNameEn;
extern NSString* FLCountry_CapitalNameCn;
extern NSString* FLCountry_CapitalNameTw;
extern NSString* FLCountry_NationalityNameEn;
extern NSString* FLCountry_NationalityNameCn;
extern NSString* FLCountry_NationalityNameTw;