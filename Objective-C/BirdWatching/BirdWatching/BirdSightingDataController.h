//
//  BirdSightingDataController.h
//  BirdWatching
//
//  Created by Kenneth Bambridge on 1/24/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BirdsSighting;


@interface BirdSightingDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterBirdSightingList;


-(NSUInteger) countOfList;
-(BirdsSighting *)objectInListAtIndex:(NSUInteger)theIndex;
-(void) addBirdSightingWithName:(NSString*)inputBirdName location:(NSString *) inputLocation;


@end
