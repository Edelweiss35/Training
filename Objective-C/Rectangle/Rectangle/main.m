//
//  main.m
//  Rectangle
//
//  Created by Kenneth Bambridge on 12/26/12.
//  Copyright (c) 2012 ClassroomM. All rights reserved.
//

#import "Rectangle.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Rectangle *rect = [[Rectangle alloc]initWithWidth:5 andHeight:4];
        NSLog(@"A %i x %i rectangle has a perimeter of %i and a area of %i", rect.width, rect.height, rect.perimeter, rect.area);
        
    }
    return 0;
}

