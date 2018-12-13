//
//  BirdSightingDataController.m
//  BirdWatching
//
//  Created by Kenneth Bambridge on 1/24/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "BirdSightingDataController.h"
#import "BirdsSighting.h"

@interface BirdSightingDataController ()

- (void) initializeDefaultDataList;

@end

@implementation BirdSightingDataController

-(id) init {
    if (self = [super init]){
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}
-(void) initializeDefaultDataList
{
    NSMutableArray *sightingList = [[NSMutableArray alloc]init];
    self.masterBirdSightingList = sightingList;
    [self addBirdSightingWithName:@"Pidgeon" location:@"Everywhere"];
}

-(void) setMasterBirdSightingList:(NSMutableArray *) newList
{
    if (_masterBirdSightingList != newList) {
        _masterBirdSightingList = [newList mutableCopy];
    }
}
-(NSUInteger) countOfList
{
    return [self.masterBirdSightingList count];
}

-(BirdsSighting *)objectInListAtIndex:(NSUInteger)theIndex
{
    return [self.masterBirdSightingList objectAtIndex:theIndex];
}

-(void) addBirdSightingWithName:(NSString *)inputBirdName location:(NSString *)inputLocation
{
    BirdsSighting *sighting;
    NSDate *today = [NSDate date];
    sighting = [[BirdsSighting alloc]initWithName:inputBirdName location:inputLocation date:today];
    [self.masterBirdSightingList addObject:sighting];
}

@end
