//
//  Square.h
//  Shapes
//
//  Created by Kenneth Bambridge on 1/11/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "Rectangle.h"

@interface Square : GraphicsObject

-(Square *) initWithSide: (double) s;
-(void) setSide: (double) s;
-(double)side;
-(double)area;
-(double)perimeter;

@end
