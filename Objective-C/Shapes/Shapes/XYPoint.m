//
//  XYPoint.m
//  Shapes
//
//  Created by Kenneth Bambridge on 1/11/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint

-(void) setX:(double)x andY:(double)y
{
    self.x = x;
    self.y = y;
}
+(XYPoint *) initWithX:(double)x andY:(double)y
{
    XYPoint *point = [[XYPoint alloc]init];
    [point setX:x andY:y];
    return point;
}

@end