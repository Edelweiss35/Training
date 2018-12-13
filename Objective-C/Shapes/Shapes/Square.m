//
//  Square.m
//  Shapes
//
//  Created by Kenneth Bambridge on 1/11/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "Rectangle.h"

@implementation Square
{
    Rectangle *rect;
}

-(Square *) init
{
    return self = [self initWithSide:0];
}
-(Square *) initWithSide:(double)s
{
    rect = [[Rectangle alloc]initWithWidth:s andHeight:s];
    return self;
}
-(void) setSide: (double) s
{
    [rect setHeight:s];
    [rect setWidth:s];
}

-(double) side
{
    return rect.height;
}

-(double) area
{
    return pow(rect.height, 2);
}
-(double) perimeter
{
    return rect.height*4;
}
@end
