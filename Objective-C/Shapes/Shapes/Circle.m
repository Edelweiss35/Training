//
//  Circle.m
//  Shapes
//
//  Created by Kenneth Bambridge on 1/11/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "Circle.h"

@implementation Circle


-(double) circumference
{
    return M_PI*2*self.radius;
}
-(double) area
{
    return pow(M_PI*self.radius,2);
}
-(double) diameter;
{
    return 2*self.radius;
}

@end
/////////////////////////////////
@interface Triangle : GraphicsObject

@property double s1;
@property double s2;
@property double s3;

-(double) perimeter;
-(double) area;


@end
