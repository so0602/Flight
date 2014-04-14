//
//  FLDatabase.m
//  Flight
//
//  Created by Freddy on 15/4/14.
//  Copyright (c) 2014 Freddy So. All rights reserved.
//

#import "FLDatabase.h"

#import "FLAirline.h"
#import "FLAirport.h"
#import "FLCity.h"
#import "FLCountry.h"

@interface FLDatabase ()

@property (nonatomic, strong, readwrite) NSArray* airlines;
@property (nonatomic, strong, readwrite) NSArray* airports;
@property (nonatomic, strong, readwrite) NSArray* cities;
@property (nonatomic, strong, readwrite) NSArray* countries;

-(void)generateData:(FMDatabase*)database table:(NSString*)tableName class:(Class)class setSelector:(SEL)selector;
-(NSArray*)dataFromDatabase:(FMDatabase*)database table:(NSString*)tableName;

@end

@implementation FLDatabase

+(FLDatabase*)database{
    static FLDatabase* database = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        database = [[FLDatabase alloc] init];
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
            [database initialize];
        });
    });
    return database;
}

-(void)initialize{
    __weak FLDatabase* weakSelf = self;
    FMDatabaseQueue* queue = [FMDatabaseQueue databaseQueueWithPath:[ResourcePath() stringByAppendingPathComponent:@"Flight.sqlite"]];
    [queue inDatabase:^(FMDatabase *db) {
        NSArray* dataSources = [weakSelf dataFromDatabase:db table:Table_Airline];
        dataSources = [FLAirline arrayWithDictionaries:dataSources];
        [FLDatabase database].airlines = dataSources;
    }];
    [queue inDatabase:^(FMDatabase *db) {
        NSArray* dataSources = [weakSelf dataFromDatabase:db table:Table_Airport];
        dataSources = [FLAirport arrayWithDictionaries:dataSources];
        [FLDatabase database].airports = dataSources;
    }];
    [queue inDatabase:^(FMDatabase *db) {
        NSArray* dataSources = [weakSelf dataFromDatabase:db table:Table_City];
        dataSources = [FLCity arrayWithDictionaries:dataSources];
        [FLDatabase database].cities = dataSources;
    }];
    [queue inDatabase:^(FMDatabase *db) {
        NSArray* dataSources = [weakSelf dataFromDatabase:db table:Table_Country];
        dataSources = [FLCountry arrayWithDictionaries:dataSources];
        [FLDatabase database].countries = dataSources;
    }];
}

#pragma mark - Private Functions

-(void)generateData:(FMDatabase*)database table:(NSString*)tableName class:(Class)class setSelector:(SEL)selector{
    NSString* statement = [NSString stringWithFormat:@"SELECT * FROM %@", tableName];
    FMResultSet* resultSet = [database executeQuery:statement];
    NSMutableArray* dataSources = [NSMutableArray array];
    while( [resultSet next] ){
        NSDictionary* dictionary = resultSet.resultDictionary;
        NSObject* dataSource = [[class alloc] initWithDictionary:dictionary];
        [dataSources addObject:dataSource];
    }
    objc_msgSend([FLDatabase database], selector, dataSources);
}

-(NSArray*)dataFromDatabase:(FMDatabase*)database table:(NSString*)tableName{
    NSString* statement = [NSString stringWithFormat:@"SELECT * FROM %@", tableName];
    FMResultSet* resultSet = [database executeQuery:statement];
    NSMutableArray* dataSources = [NSMutableArray array];
    while( [resultSet next] ){
        [dataSources addObject:resultSet.resultDictionary];
    }
    return dataSources;
}

@end

NSString* Table_Airline = @"mas_A_airline";
NSString* Table_Airport = @"mas_A_airport";
NSString* Table_City = @"mas_A_city";
NSString* Table_Country = @"mas_A_country";