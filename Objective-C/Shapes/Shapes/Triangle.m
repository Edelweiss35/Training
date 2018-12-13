//
//  Triangle.m
//  Shapes
//
//  Created by Kenneth Bambridge on 1/11/13.
//  Copyright (c) 2013 Kenneth Bambridge. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

-(double) perimeter;
{
    return self.s1 + self.s2 + self.s3;
}
-(double) area
{
    double s = self.perimeter/2;
    return sqrt((s - self.s1)*(s-self.s2)*(s-self.s3));
}

@end
