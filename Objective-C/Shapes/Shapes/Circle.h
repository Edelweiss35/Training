//
//  Circle.h
//  Shapes
//
//  Created by Kenneth Bambridge on 1/11/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "GraphicsObject.h"

@interface Circle : GraphicsObject
@property double radius;
-(double) circumference;
-(double) area;
-(double) diameter;
@end
