//
//  FLDatabase.h
//  Flight
//
//  Created by Freddy on 15/4/14.
//  Copyright (c) 2014 Freddy So. All rights reserved.
//

@interface FLDatabase : NSObject

@property (nonatomic, strong, readonly) NSArray* airlines;
@property (nonatomic, strong, readonly) NSArray* airports;
@property (nonatomic, strong, readonly) NSArray* cities;
@property (nonatomic, strong, readonly) NSArray* countries;

+(FLDatabase*)database;

-(void)initialize;

@end

extern NSString* Table_Airline;
extern NSString* Table_Airport;
extern NSString* Table_City;
extern NSString* Table_Country;