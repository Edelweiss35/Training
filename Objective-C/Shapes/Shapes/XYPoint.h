//
//  XYPoint.h
//  Shapes
//
//  Created by Kenneth Bambridge on 1/11/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject

@property double x;
@property double y;
-(void) setX:(double)x andY: (double)y;
+(XYPoint *) initWithX:(double)x andY: (double)y;

@end
