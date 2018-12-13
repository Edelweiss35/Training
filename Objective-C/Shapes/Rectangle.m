//
//  Rectangle.m
//  Rectangle
//
//  Created by Kenneth Bambridge on 1/11/13.
//  Copyright (c) 2013 ClassroomM. All rights reserved.
//

#import "Rectangle.h"


@implementation Rectangle

-(id) init
{
    return self = [self initWithWidth:0 andHeight:0];
}
-(id) initWithWidth:(int)w andHeight:(int)h
{
    self = [super init];
    [self setWidth:w];
    [self setHeight:h];
    return self;
}
-(double) perimeter
{
    return 2*self.width + 2*self.height;
}
-(double) area
{
    return self.width*self.height;
}
-(XYPoint *) origin
{
    return self.origin;
}
-(void) setOrigin: (XYPoint*) origin
{
    if (!self.origin) self.origin = [[XYPoint alloc]init];
    self.origin.x = origin.x;
    self.origin.y = origin.y;
}
-(BOOL)containsPoint: (XYPoint *) aPoint
{
    double xlimit = self.origin.x + self.width;
    double ylimit = self.origin.y + self.height;
    if (aPoint.x <= xlimit && aPoint.x >= self.origin.x && aPoint.y <= ylimit && aPoint.y >= self.origin.y)
        return YES;
    else return NO;
}
-(Rectangle *) intersect:(Rectangle *)rect
{
    NSSet *cornerPoints = [[NSSet alloc]initWithObjects:rect.origin, nil];
    double width = 0; double height = 0;
    XYPoint *point = rect.origin;
    if ([self containsPoint:point]) {
        width = fmin(self.origin.x + self.width - point.x, point.x + rect.width);
    }
    else if ([self containsPoint:point]) {
    }
    return self;
}

@end
