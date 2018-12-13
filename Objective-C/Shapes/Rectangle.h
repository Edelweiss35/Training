//
//  Rectangle.h
//  Rectangle
//
//  Created by Kenneth Bambridge on 1/11/13.
//  Copyright (c) 2013 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GraphicsObject.h"
#import "XYPoint.h"

@interface Rectangle : GraphicsObject

-(id) initWithWidth: (int) w andHeight: (int) h;
@property double width;
@property double height;
- (double) perimeter;
-(double) area;
-(XYPoint *)  origin;
-(void) setOrigin: (XYPoint *) origin;
-(BOOL)containsPoint: (XYPoint *) aPoint;
-(Rectangle *)intersect: (Rectangle *) rect;

@end

