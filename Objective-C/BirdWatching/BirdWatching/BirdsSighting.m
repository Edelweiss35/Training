//
//  BirdsSighting.m
//  BirdWatching
//
//  Created by Kenneth Bambridge on 1/24/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "BirdsSighting.h"

@implementation BirdsSighting

-(id) initWithName:(NSString *)name location:(NSString *)loc date:(NSDate *)date
{
    self = [super init];
    if (self)
    {
        _date = date;
        _name = name;
        _location = loc;
        return self;
    }
    return nil;
}

@end
