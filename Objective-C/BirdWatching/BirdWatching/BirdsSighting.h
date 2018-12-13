//
//  BirdsSighting.h
//  BirdWatching
//
//  Created by Kenneth Bambridge on 1/24/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BirdsSighting : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic, copy) NSString *location;
@property (nonatomic, strong) NSDate *date;

-(id) initWithName: (NSString *)name location: (NSString *) loc date: (NSDate *) date;
@end
