//
//  Rectangle.m
//  Rectangle
//
//  Created by Kenneth Bambridge on 1/11/13.
//  Copyright (c) 2013 ClassroomM. All rights reserved.
//

#import "Rectangle.h"


@implementation Rectangle
{
    int width;
    int height;
}

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
- (void) setWidth:(int)w
{
    width = w;
}

-(void) setHeight:(int)h
{
    height = h;
}

-(int) width
{
    return width;
}

-(int) height
{
    return height;
}

-(int) perimeter
{
    return width*2 + height*2;
}

-(int) area
{
    return width*height;
}

@end
