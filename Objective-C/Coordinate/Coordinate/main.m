//
//  main.m
//  Coordinate
//
//  Created by Kenneth Bambridge on 12/24/12.
//  Copyright (c) 2012 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject

- (void) print;
- (int) x;
- (int) y;

@end

@implementation XYPoint
{
    int x;
    int y;
}

- (void) print
{
    NSLog(@"(%i, %i)", x, y);
}

- (void) setX: (int) xCoord
{
    x = xCoord;
}

- (void) setY: (int) yCoord
{
    y = yCoord;
}

- (int) x
{
    return x;
}

- (int) y
{
    return y;
}


@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        XYPoint *pt = [[XYPoint alloc] init];
        [pt setX: 1];
        [pt setY: 2];
        
        NSLog(@"The point is at: ");
        [pt print];
        
        NSLog(@"The point is at (%i,%i)", [pt x], [pt y]);
        
        
    }
    return 0;
}

